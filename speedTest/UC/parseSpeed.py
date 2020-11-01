import os
import xlwt

def fileName():
    L = []
    for root, dirs, files in os.walk("./"):
        for file in files:
            if os.path.splitext(file)[1] == '.txt':
                L.append(os.path.join(root, file))
    return L

if __name__ == "__main__":
    fileList = fileName()
    # fileList = ['./JCbbr1.txt', './JCbbr16.txt']
    workbook = xlwt.Workbook(encoding='utf-8')
    worksheet = workbook.add_sheet('My Worksheet')
    col = 0
    for file in fileList:
        file = file.split('/')[1]
        print(file)
        fd = open(file, "r")
        flows = 0
        col = col + 1
        row = 0

        file = file.split('.')[0]
        worksheet.write(row, col, str(file))
        for i in range(len(file)-1, 0, -1):
            if(not(file[i]>='0' and file[i]<='9')):
                break
            flows = flows*10+(ord(file[i])-ord('0'))


        if flows == 1:
            for line in fd.readlines():

                items = line.split()
                if(len(items)<2 or items[1] != '4]' or items[3]!='sec'):
                    continue
                speed = eval(items[6])
                unit = items[7]
                if(unit.split('/')[0] == 'bits'):
                    speed = speed/1024/1024
                elif(unit.split('/')[0] == 'Kbits'):
                    speed = speed/1024
                elif(unit.split('/')[0] == 'Gbits'):
                    speed = speed*1024
                row = row + 1
                worksheet.write(row, col, speed)
        else:
            for line in fd.readlines():
                items = line.split()
                if(len(items)<2 or items[0] != '[SUM]' or items[2]!='sec'):
                    continue
                speed = eval(items[5])
                unit = items[6]
                if(unit.split('/')[0] == 'bits'):
                    speed = speed/1024/1024
                elif(unit.split('/')[0] == 'Kbits'):
                    speed = speed/1024
                elif(unit.split('/')[0] == 'Gbits'):
                    speed = speed*1024
                row = row + 1
                worksheet.write(row, col, speed)
    workbook.save('Excel_test.xls')
