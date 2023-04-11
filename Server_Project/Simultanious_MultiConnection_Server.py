import threading
import socket
import time
import queue

# ConnectionThread 繼承自 threading(file) 中的 Thread(class)
# 成功連接的連線都會生成一個此物件來封裝該連線，並且加入connection_pool方便管理
class ConnectionThread(threading.Thread):
    def __init__(self, connection, address):
        threading.Thread.__init__(self)
        self.connection = connection
        self.address = address

    def run(self):
        print("Connected by ", self.address)
        while True:
            try:
                message = self.connection.recv(1024).decode(encoding='utf-8')
                if message == "":
                    print(self.address, " disconnected.")
                    connection_pool.pop(self.address)
                    break
                #print(type(message))
                print("Receive from ", self.address, "message: ", message)
                #################################################################################
                #                                                                               #
                #   Process the message and send the corresponding data return to the client    #
                #   Ex. self.connection.send(Process_and_Make_Command(message))                 #
                #                                                                               #
                #################################################################################
            except Exception as e:
                print(e)
                print(self.address, " disconnected.")
                connection_pool.pop(self.address)
                break


# ConnectionHandler 繼承自 threading(file) 中的 Thread(class)
# 此執行緒負責處理連線請求
class ConnectionHandler(threading.Thread):
    def __init__(self, name):
        threading.Thread.__init__(self)
        self.name = name

    def run(self):
        print("Server start, waiting for connection...")
        while True:
            connection, address = socket_obj.accept()
            connection_pool[address] = ConnectionThread(connection, address)
            connection_pool[address].daemon = True
            connection_pool[address].start()




# 管理連線用的list            
connection_pool = {}

# Socket initialization begin
HOST = '0.0.0.0'
PORT = 7000
ADDR = (HOST, PORT)

socket_obj = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket_obj.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

socket_obj.bind(ADDR)
socket_obj.listen(5)
# Socket initialization end


connection_handler = ConnectionHandler("Socket1")
connection_handler.daemon = True
connection_handler.start()

# 因為需要讓資料庫操作具有 Mutual Exclusion因此採用一個Queue來儲存須對資料庫進行的所有操作
# 再由 Main Thread 逐一讀取並進行操作
instruction_queue = queue.Queue()

# 主程式邏輯
while True:
    print("is processing")
    instruction_queue.get()
    time.sleep(5)