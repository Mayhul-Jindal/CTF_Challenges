.class Lcom/smartsoft/ble/Bluetooth$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartsoft/ble/Bluetooth;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartsoft/ble/Bluetooth;


# direct methods
.method constructor <init>(Lcom/smartsoft/ble/Bluetooth;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth$1;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method private addDevice(Landroid/bluetooth/le/ScanResult;)V
    .locals 7

    .line 186
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v3

    .line 187
    invoke-static {v3}, Lcom/smartsoft/ble/JScanRecord;->parseFromBytes([B)Lcom/smartsoft/ble/JScanRecord;

    move-result-object v6

    .line 188
    invoke-virtual {v6}, Lcom/smartsoft/ble/JScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth$1;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-static {v0, v3}, Lcom/smartsoft/ble/Bluetooth;->access$100(Lcom/smartsoft/ble/Bluetooth;[B)Lcom/smartsoft/ble/BleType;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/smartsoft/ble/BleType;->Unknown:Lcom/smartsoft/ble/BleType;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 195
    iget-object v1, p0, Lcom/smartsoft/ble/Bluetooth$1;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartsoft/ble/BleType;->ordinal()I

    move-result v4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v5

    invoke-static/range {v1 .. v6}, Lcom/smartsoft/ble/Bluetooth;->access$200(Lcom/smartsoft/ble/Bluetooth;Landroid/bluetooth/BluetoothDevice;[BIILcom/smartsoft/ble/JScanRecord;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v6}, Lcom/smartsoft/ble/JScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/smartsoft/ble/Bluetooth;->access$300([B)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 205
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/smartsoft/ble/Bluetooth;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/smartsoft/ble/Bluetooth$1;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    sget-object v0, Lcom/smartsoft/ble/BleType;->JDY_Other:Lcom/smartsoft/ble/BleType;

    invoke-virtual {v0}, Lcom/smartsoft/ble/BleType;->ordinal()I

    move-result v4

    .line 212
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v5

    .line 211
    invoke-static/range {v1 .. v6}, Lcom/smartsoft/ble/Bluetooth;->access$200(Lcom/smartsoft/ble/Bluetooth;Landroid/bluetooth/BluetoothDevice;[BIILcom/smartsoft/ble/JScanRecord;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 172
    invoke-direct {p0, v0}, Lcom/smartsoft/ble/Bluetooth$1;->addDevice(Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScanFailed(I)V
    .locals 3

    .line 179
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 181
    invoke-static {}, Lcom/smartsoft/ble/Bluetooth;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** Scan failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 162
    invoke-direct {p0, p2}, Lcom/smartsoft/ble/Bluetooth$1;->addDevice(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
