.class public Lcom/smartsoft/ble/BleService;
.super Landroid/app/Service;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartsoft/ble/BleService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_AVAILABLE:Ljava/lang/String; = "com.smartsoft.ble.ACTION_DATA_AVAILABLE"

.field public static final ACTION_DATA_AVAILABLE_FUNC:Ljava/lang/String; = "com.smartsoft.ble.ACTION_DATA_AVAILABLE_FUNC"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "com.smartsoft.ble.ACTION_GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "com.smartsoft.ble.ACTION_GATT_DISCONNECTED"

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String; = "com.smartsoft.ble.ACTION_GATT_SERVICES_DISCOVERED"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.smartsoft.ble.EXTRA_DATA"

.field public static final EXTRA_DATA_FUNC:Ljava/lang/String; = "com.smartsoft.ble.EXTRA_DATA_FUNC"

.field public static MTU_MAX_VALUE:I = 0xbc

.field private static final TAG:Ljava/lang/String; = "BleService"

.field public static UUID_DESCRIPTOR:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"

.field public static UUID_NOTIFY_CHARACTERISTIC:Ljava/lang/String; = "0000ffe1-0000-1000-8000-00805f9b34fb"

.field public static UUID_NOTIFY_SERVER:Ljava/lang/String; = "0000ffe0-0000-1000-8000-00805f9b34fb"

.field public static UUID_READ_CHARACTERISTIC:Ljava/lang/String; = "0000ffe3-0000-1000-8000-00805f9b34fb"

.field public static UUID_WRITE_CHARACTERISTIC:Ljava/lang/String; = "0000ffe2-0000-1000-8000-00805f9b34fb"

.field public static UUID_WRITE_SERVER:Ljava/lang/String; = "0000ffe1-0000-1000-8000-00805f9b34fb"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mCharacteristicNotify:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharacteristicWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharacteristicWriteFunc:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private maxPkgCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 27
    iput-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    iput-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v0, 0x14

    .line 29
    iput v0, p0, Lcom/smartsoft/ble/BleService;->maxPkgCount:I

    .line 51
    new-instance v0, Lcom/smartsoft/ble/BleService$1;

    invoke-direct {v0, p0}, Lcom/smartsoft/ble/BleService$1;-><init>(Lcom/smartsoft/ble/BleService;)V

    iput-object v0, p0, Lcom/smartsoft/ble/BleService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 178
    new-instance v0, Lcom/smartsoft/ble/BleService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/smartsoft/ble/BleService$LocalBinder;-><init>(Lcom/smartsoft/ble/BleService;)V

    iput-object v0, p0, Lcom/smartsoft/ble/BleService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/smartsoft/ble/BleService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartsoft/ble/BleService;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$102(Lcom/smartsoft/ble/BleService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$200(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/smartsoft/ble/BleService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$302(Lcom/smartsoft/ble/BleService;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/smartsoft/ble/BleService;->maxPkgCount:I

    return p1
.end method

.method static synthetic access$402(Lcom/smartsoft/ble/BleService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWriteFunc:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$502(Lcom/smartsoft/ble/BleService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicNotify:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$602(Lcom/smartsoft/ble/BleService;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$700(Lcom/smartsoft/ble/BleService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/smartsoft/ble/BleService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "address"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/smartsoft/ble/BleService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string p3, "address"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    .line 281
    sget-object p3, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_CHARACTERISTIC:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 282
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 283
    array-length p2, p1

    if-lez p2, :cond_1

    const-string p2, "com.smartsoft.ble.EXTRA_DATA"

    .line 284
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 286
    :cond_0
    sget-object p3, Lcom/smartsoft/ble/BleService;->UUID_WRITE_CHARACTERISTIC:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 288
    array-length p2, p1

    if-lez p2, :cond_1

    const-string p2, "com.smartsoft.ble.EXTRA_DATA_FUNC"

    .line 289
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 293
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smartsoft/ble/BleService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_4

    .line 407
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 410
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 411
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 412
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    const/16 v3, 0x20

    .line 418
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v0, 0x32

    .line 343
    invoke-virtual {p0, v0}, Lcom/smartsoft/ble/BleService;->delay(I)V

    :cond_0
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 321
    sget-object p1, Lcom/smartsoft/ble/BleService;->TAG:Ljava/lang/String;

    const-string v1, "Unspecified address!"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/smartsoft/ble/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 326
    sget-object p1, Lcom/smartsoft/ble/BleService;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter is not initialized!"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/smartsoft/ble/BleService;->close()V

    .line 332
    iget-object v1, p0, Lcom/smartsoft/ble/BleService;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p0, v0, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 333
    sget-object p1, Lcom/smartsoft/ble/BleService;->TAG:Ljava/lang/String;

    const-string v0, "Trying to create a new connection."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public connectState()I
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/smartsoft/ble/ConnectState;->ConnectStateDisconnected:Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/ConnectState;->ordinal()I

    move-result v0

    return v0

    .line 353
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    sget-object v0, Lcom/smartsoft/ble/ConnectState;->ConnectStateDisconnected:Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/ConnectState;->ordinal()I

    move-result v0

    return v0

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/smartsoft/ble/BleService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 365
    sget-object v0, Lcom/smartsoft/ble/ConnectState;->ConnectStateDisconnected:Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/ConnectState;->ordinal()I

    move-result v0

    return v0

    .line 363
    :cond_2
    sget-object v0, Lcom/smartsoft/ble/ConnectState;->ConnectStateDisconnecting:Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/ConnectState;->ordinal()I

    move-result v0

    return v0

    .line 362
    :cond_3
    sget-object v0, Lcom/smartsoft/ble/ConnectState;->ConnectStateConnected:Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/ConnectState;->ordinal()I

    move-result v0

    return v0

    .line 361
    :cond_4
    sget-object v0, Lcom/smartsoft/ble/ConnectState;->ConnectStateConnecting:Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/ConnectState;->ordinal()I

    move-result v0

    return v0
.end method

.method public delay(I)V
    .locals 2

    .line 372
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v0, p1

    .line 373
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 375
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableBle(I)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWriteFunc:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicNotify:Landroid/bluetooth/BluetoothGattCharacteristic;

    :goto_0
    if-nez v1, :cond_4

    return-void

    .line 253
    :cond_4
    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 255
    sget-object p1, Lcom/smartsoft/ble/BleService;->UUID_DESCRIPTOR:Ljava/lang/String;

    .line 256
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v1, v0, v3

    .line 261
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 262
    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    const/16 p1, 0x32

    .line 263
    invoke-virtual {p0, p1}, Lcom/smartsoft/ble/BleService;->delay(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public initialize()Z
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_2

    const-string v0, "bluetooth"

    .line 302
    invoke-virtual {p0, v0}, Lcom/smartsoft/ble/BleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/smartsoft/ble/BleService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to initialize BluetoothManager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 308
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    .line 310
    sget-object v0, Lcom/smartsoft/ble/BleService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/smartsoft/ble/BleService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/smartsoft/ble/BleService;->close()V

    .line 185
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 387
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    .line 389
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 393
    :catch_0
    sget-object p1, Lcom/smartsoft/ble/BleService;->TAG:Ljava/lang/String;

    const-string v1, "An exception occurred while refreshing device"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public writeData([B)I
    .locals 10

    .line 190
    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    iget v0, p0, Lcom/smartsoft/ble/BleService;->maxPkgCount:I

    .line 195
    array-length v2, p1

    .line 196
    div-int v3, v2, v0

    .line 197
    rem-int/2addr v2, v0

    .line 198
    new-array v4, v0, [B

    const/16 v5, 0x14

    if-lez v3, :cond_1

    move v6, v1

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_2

    .line 203
    invoke-static {p1, v7, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget-object v8, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v8, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 205
    iget-object v8, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v9, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 206
    invoke-virtual {p0, v5}, Lcom/smartsoft/ble/BleService;->delay(I)V

    add-int/2addr v7, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v7, v1

    :cond_2
    if-lez v2, :cond_3

    .line 212
    new-array v0, v2, [B

    .line 213
    invoke-static {p1, v7, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iget-object p1, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 215
    iget-object p1, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 216
    invoke-virtual {p0, v5}, Lcom/smartsoft/ble/BleService;->delay(I)V

    add-int/2addr v7, v2

    :cond_3
    return v7

    :cond_4
    :goto_1
    return v1
.end method

.method public writeFunc([B)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWriteFunc:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 230
    iget-object p1, p0, Lcom/smartsoft/ble/BleService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v0, p0, Lcom/smartsoft/ble/BleService;->mCharacteristicWriteFunc:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    const/16 p1, 0x14

    .line 231
    invoke-virtual {p0, p1}, Lcom/smartsoft/ble/BleService;->delay(I)V

    :cond_1
    :goto_0
    return-void
.end method
