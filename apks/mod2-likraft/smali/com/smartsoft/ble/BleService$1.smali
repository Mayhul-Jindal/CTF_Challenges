.class Lcom/smartsoft/ble/BleService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartsoft/ble/BleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartsoft/ble/BleService;


# direct methods
.method constructor <init>(Lcom/smartsoft/ble/BleService;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 160
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_CHARACTERISTIC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v1, "com.smartsoft.ble.ACTION_DATA_AVAILABLE"

    invoke-static {v0, v1, p2, p1}, Lcom/smartsoft/ble/BleService;->access$700(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 165
    :cond_0
    sget-object v1, Lcom/smartsoft/ble/BleService;->UUID_WRITE_CHARACTERISTIC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v1, "com.smartsoft.ble.ACTION_DATA_AVAILABLE_FUNC"

    invoke-static {v0, v1, p2, p1}, Lcom/smartsoft/ble/BleService;->access$700(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 144
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    return-void

    .line 151
    :cond_0
    sget-object p3, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_CHARACTERISTIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 152
    iget-object p3, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "com.smartsoft.ble.ACTION_DATA_AVAILABLE"

    invoke-static {p3, v0, p2, p1}, Lcom/smartsoft/ble/BleService;->access$700(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object p3, Lcom/smartsoft/ble/BleService;->UUID_WRITE_CHARACTERISTIC:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 154
    iget-object p3, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "com.smartsoft.ble.ACTION_DATA_AVAILABLE_FUNC"

    invoke-static {p3, v0, p2, p1}, Lcom/smartsoft/ble/BleService;->access$700(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 54
    invoke-static {}, Lcom/smartsoft/ble/BleService;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Connected to GATT server."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_0

    sget p2, Lcom/smartsoft/ble/BleService;->MTU_MAX_VALUE:I

    const/16 p3, 0x17

    if-le p2, p3, :cond_0

    sget p2, Lcom/smartsoft/ble/BleService;->MTU_MAX_VALUE:I

    const/16 p3, 0x200

    if-ge p2, p3, :cond_0

    .line 58
    sget p2, Lcom/smartsoft/ble/BleService;->MTU_MAX_VALUE:I

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-static {p2}, Lcom/smartsoft/ble/BleService;->access$100(Lcom/smartsoft/ble/BleService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 61
    iget-object p2, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-static {p2}, Lcom/smartsoft/ble/BleService;->access$100(Lcom/smartsoft/ble/BleService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p2

    if-nez p2, :cond_1

    .line 62
    invoke-static {}, Lcom/smartsoft/ble/BleService;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Discovery services failure"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string p3, "com.smartsoft.ble.ACTION_GATT_CONNECTED"

    invoke-static {p2, p3, p1}, Lcom/smartsoft/ble/BleService;->access$200(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 69
    invoke-static {}, Lcom/smartsoft/ble/BleService;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Disconnected from GATT server."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p2, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    const-string v0, "com.smartsoft.ble.ACTION_GATT_DISCONNECTED"

    invoke-static {p2, v0, p3}, Lcom/smartsoft/ble/BleService;->access$200(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 71
    iget-object p2, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-virtual {p2, p1}, Lcom/smartsoft/ble/BleService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 72
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 73
    iget-object p1, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/smartsoft/ble/BleService;->access$102(Lcom/smartsoft/ble/BleService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    :cond_3
    :goto_1
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 82
    iget-object p1, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    add-int/lit8 v0, p2, -0x3

    invoke-static {p1, v0}, Lcom/smartsoft/ble/BleService;->access$302(Lcom/smartsoft/ble/BleService;I)I

    const-string p1, ")"

    if-nez p3, :cond_0

    .line 83
    sget p3, Lcom/smartsoft/ble/BleService;->MTU_MAX_VALUE:I

    if-ne p3, p2, :cond_0

    .line 84
    invoke-static {}, Lcom/smartsoft/ble/BleService;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTU change success! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/smartsoft/ble/BleService;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTU change fail! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-static {p1}, Lcom/smartsoft/ble/BleService;->access$100(Lcom/smartsoft/ble/BleService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-static {p1}, Lcom/smartsoft/ble/BleService;->access$100(Lcom/smartsoft/ble/BleService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    if-nez p1, :cond_1

    .line 91
    invoke-static {}, Lcom/smartsoft/ble/BleService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Discovery services failure"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 7

    if-eqz p2, :cond_0

    .line 99
    invoke-static {}, Lcom/smartsoft/ble/BleService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Services discovered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    sget-object v0, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_SERVER:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 110
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 113
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    .line 115
    sget-object v5, Lcom/smartsoft/ble/BleService;->UUID_WRITE_CHARACTERISTIC:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 117
    iget-object v3, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-static {v3, v2}, Lcom/smartsoft/ble/BleService;->access$402(Lcom/smartsoft/ble/BleService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_1

    .line 118
    :cond_2
    sget-object v5, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_CHARACTERISTIC:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    and-int/lit8 v3, v4, 0x10

    const/16 v5, 0x10

    if-ne v3, v5, :cond_3

    .line 122
    iget-object v3, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-static {v3, v2}, Lcom/smartsoft/ble/BleService;->access$502(Lcom/smartsoft/ble/BleService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_3
    and-int/lit8 v3, v4, 0x8

    const/16 v5, 0x8

    if-eq v3, v5, :cond_4

    and-int/lit8 v3, v4, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 129
    :cond_4
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 130
    iget-object v3, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-static {v3, v2}, Lcom/smartsoft/ble/BleService;->access$602(Lcom/smartsoft/ble/BleService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 139
    iget-object p2, p0, Lcom/smartsoft/ble/BleService$1;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string v0, "com.smartsoft.ble.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-static {p2, v0, p1}, Lcom/smartsoft/ble/BleService;->access$200(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
