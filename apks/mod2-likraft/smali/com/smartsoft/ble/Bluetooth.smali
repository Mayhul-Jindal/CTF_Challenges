.class public Lcom/smartsoft/ble/Bluetooth;
.super Ljava/lang/Object;
.source "Bluetooth.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Bluetooth"

.field private static final deviceIds:[Ljava/lang/String;

.field protected static final hexArray:[C


# instance fields
.field private devVid:B

.field private mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

.field public mActivity:Landroid/app/Activity;

.field private mBleService:Lcom/smartsoft/ble/BleService;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnected:Z

.field public mCppThis:I

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartsoft/ble/BluetoothInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mPermissionAllowed:Z

.field private mPermissionErrorString:Ljava/lang/String;

.field private mScanCallback:Ljava/lang/Object;

.field private mScanning:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "F000"

    const-string v1, "F00088A03CA54AE421E0"

    const-string v2, "650B"

    const-string v3, "650B88A03CA539DB5BEE"

    const-string v4, "88A03CA539DB5BEE"

    const-string v5, "C1EA"

    const-string v6, "C1EA88A03CA55080C7CF"

    const-string v7, "0B2D"

    const-string v8, "0B2D88A0191229110E19"

    const-string v9, "4458"

    const-string v10, "44585A4E424C45"

    const-string v11, "4A4B"

    const-string v12, "4A4B0001"

    .line 97
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartsoft/ble/Bluetooth;->deviceIds:[Ljava/lang/String;

    const-string v0, "0123456789ABCDEF"

    .line 835
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/smartsoft/ble/Bluetooth;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBleService:Lcom/smartsoft/ble/BleService;

    .line 84
    iput-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    .line 85
    iput-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartsoft/ble/Bluetooth;->mDevices:Ljava/util/List;

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/smartsoft/ble/Bluetooth;->mPermissionAllowed:Z

    const-string v2, ""

    .line 88
    iput-object v2, p0, Lcom/smartsoft/ble/Bluetooth;->mPermissionErrorString:Ljava/lang/String;

    const/4 v2, 0x0

    .line 89
    iput-boolean v2, p0, Lcom/smartsoft/ble/Bluetooth;->mConnected:Z

    .line 90
    iput-boolean v2, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    const/16 v2, -0x78

    .line 91
    iput-byte v2, p0, Lcom/smartsoft/ble/Bluetooth;->devVid:B

    .line 92
    iput-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mScanCallback:Ljava/lang/Object;

    .line 475
    new-instance v0, Lcom/smartsoft/ble/Bluetooth$3;

    invoke-direct {v0, p0}, Lcom/smartsoft/ble/Bluetooth$3;-><init>(Lcom/smartsoft/ble/Bluetooth;)V

    iput-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 503
    new-instance v0, Lcom/smartsoft/ble/Bluetooth$4;

    invoke-direct {v0, p0}, Lcom/smartsoft/ble/Bluetooth$4;-><init>(Lcom/smartsoft/ble/Bluetooth;)V

    iput-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v0, Lcom/smartsoft/ble/Bluetooth$5;

    invoke-direct {v0, p0}, Lcom/smartsoft/ble/Bluetooth$5;-><init>(Lcom/smartsoft/ble/Bluetooth;)V

    iput-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 117
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    .line 118
    iput p2, p0, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    .line 120
    instance-of p2, p1, Lcom/smartsoft/ble/MainActivity;

    if-eqz p2, :cond_0

    .line 121
    check-cast p1, Lcom/smartsoft/ble/MainActivity;

    if-eqz p1, :cond_0

    .line 123
    iput-object p0, p1, Lcom/smartsoft/ble/MainActivity;->mBluetooth:Lcom/smartsoft/ble/Bluetooth;

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.bluetooth_le"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 128
    sget-object p1, Lcom/smartsoft/ble/Bluetooth;->TAG:Ljava/lang/String;

    const-string p2, "has no system feature: FEATURE_BLUETOOTH_LE!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    const-string p2, "bluetooth"

    .line 134
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 135
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_2

    .line 139
    sget-object p1, Lcom/smartsoft/ble/Bluetooth;->TAG:Ljava/lang/String;

    const-string p2, "mBluetoothAdapter init failure!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 146
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 147
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_5

    .line 152
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_4

    .line 154
    invoke-direct {p0}, Lcom/smartsoft/ble/Bluetooth;->doStartLocation()V

    .line 157
    :cond_4
    new-instance p1, Lcom/smartsoft/ble/Bluetooth$1;

    invoke-direct {p1, p0}, Lcom/smartsoft/ble/Bluetooth$1;-><init>(Lcom/smartsoft/ble/Bluetooth;)V

    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mScanCallback:Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lcom/smartsoft/ble/Bluetooth;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartsoft/ble/Bluetooth;[B)Lcom/smartsoft/ble/BleType;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/smartsoft/ble/Bluetooth;->deviceType([B)Lcom/smartsoft/ble/BleType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartsoft/ble/Bluetooth;Landroid/bluetooth/BluetoothDevice;[BIILcom/smartsoft/ble/JScanRecord;)V
    .locals 0

    .line 81
    invoke-direct/range {p0 .. p5}, Lcom/smartsoft/ble/Bluetooth;->addDevice(Landroid/bluetooth/BluetoothDevice;[BIILcom/smartsoft/ble/JScanRecord;)V

    return-void
.end method

.method static synthetic access$300([B)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/smartsoft/ble/Bluetooth;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/smartsoft/ble/Bluetooth;->isValidDevice(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BleService;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/smartsoft/ble/Bluetooth;->mBleService:Lcom/smartsoft/ble/BleService;

    return-object p0
.end method

.method static synthetic access$502(Lcom/smartsoft/ble/Bluetooth;Lcom/smartsoft/ble/BleService;)Lcom/smartsoft/ble/BleService;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mBleService:Lcom/smartsoft/ble/BleService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/smartsoft/ble/Bluetooth;)Lcom/smartsoft/ble/BluetoothInfo;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    return-object p0
.end method

.method static synthetic access$702(Lcom/smartsoft/ble/Bluetooth;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/smartsoft/ble/Bluetooth;->mConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/smartsoft/ble/Bluetooth;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/smartsoft/ble/Bluetooth;->nameByUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addDevice(Landroid/bluetooth/BluetoothDevice;[BIILcom/smartsoft/ble/JScanRecord;)V
    .locals 10

    .line 649
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/smartsoft/ble/Bluetooth;->mDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartsoft/ble/BluetoothInfo;

    .line 653
    iget-object v5, v4, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 655
    iget-object v5, v4, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 656
    iput-object p1, v4, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    .line 657
    iput-object p2, v4, Lcom/smartsoft/ble/BluetoothInfo;->scanRecord:[B

    .line 658
    iput p3, v4, Lcom/smartsoft/ble/BluetoothInfo;->type:I

    .line 660
    invoke-virtual {p5}, Lcom/smartsoft/ble/JScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 662
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    .line 664
    iget-object v5, v4, Lcom/smartsoft/ble/BluetoothInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 665
    iput-object v3, v4, Lcom/smartsoft/ble/BluetoothInfo;->name:Ljava/lang/String;

    .line 666
    iget v5, p0, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    invoke-static {v5, v0, v3}, Lcom/smartsoft/ble/NativeClass;->deviceUpdateName(ILjava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_2
    iget v3, v4, Lcom/smartsoft/ble/BluetoothInfo;->rssi:I

    if-eq v3, p4, :cond_3

    .line 670
    iput p4, v4, Lcom/smartsoft/ble/BluetoothInfo;->rssi:I

    .line 671
    iget v3, p0, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    invoke-static {v3, v0, p4}, Lcom/smartsoft/ble/NativeClass;->deviceUpdateRSSI(ILjava/lang/String;I)V

    :cond_3
    move-object v3, v4

    goto :goto_0

    :cond_4
    if-nez v2, :cond_6

    .line 679
    new-instance v3, Lcom/smartsoft/ble/BluetoothInfo;

    invoke-direct {v3}, Lcom/smartsoft/ble/BluetoothInfo;-><init>()V

    .line 680
    iput-object p1, v3, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    .line 681
    iput-object p2, v3, Lcom/smartsoft/ble/BluetoothInfo;->scanRecord:[B

    .line 682
    iput p3, v3, Lcom/smartsoft/ble/BluetoothInfo;->type:I

    .line 683
    iput p4, v3, Lcom/smartsoft/ble/BluetoothInfo;->rssi:I

    .line 684
    invoke-virtual {p5}, Lcom/smartsoft/ble/JScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/smartsoft/ble/BluetoothInfo;->name:Ljava/lang/String;

    .line 685
    iget-object p2, v3, Lcom/smartsoft/ble/BluetoothInfo;->name:Ljava/lang/String;

    if-nez p2, :cond_5

    .line 686
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/smartsoft/ble/BluetoothInfo;->name:Ljava/lang/String;

    .line 688
    :cond_5
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mDevices:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v3, :cond_7

    .line 694
    iget-object p1, v3, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 695
    iget v4, p0, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    iget-object v5, v3, Lcom/smartsoft/ble/BluetoothInfo;->name:Ljava/lang/String;

    iget v8, v3, Lcom/smartsoft/ble/BluetoothInfo;->type:I

    iget v9, v3, Lcom/smartsoft/ble/BluetoothInfo;->rssi:I

    move-object v6, v7

    invoke-static/range {v4 .. v9}, Lcom/smartsoft/ble/NativeClass;->deviceAdded(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_7
    return-void
.end method

.method private buildScanFilters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 723
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 728
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildScanSettings()Landroid/bluetooth/le/ScanSettings;
    .locals 3

    .line 736
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 737
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x2

    .line 739
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 740
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 742
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 750
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "<null>"

    return-object p0

    .line 850
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 851
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 852
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 853
    sget-object v4, Lcom/smartsoft/ble/Bluetooth;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 854
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static createBluetooth(Landroid/app/Activity;I)Lcom/smartsoft/ble/Bluetooth;
    .locals 1

    .line 222
    new-instance v0, Lcom/smartsoft/ble/Bluetooth;

    invoke-direct {v0, p0, p1}, Lcom/smartsoft/ble/Bluetooth;-><init>(Landroid/app/Activity;I)V

    return-object v0
.end method

.method private deviceType([B)Lcom/smartsoft/ble/BleType;
    .locals 2

    .line 703
    array-length v0, p1

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    .line 704
    sget-object p1, Lcom/smartsoft/ble/BleType;->Unknown:Lcom/smartsoft/ble/BleType;

    return-object p1

    :cond_0
    const/4 v0, 0x5

    .line 707
    aget-byte v0, p1, v0

    const/16 v1, -0x20

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-byte v0, p0, Lcom/smartsoft/ble/Bluetooth;->devVid:B

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    if-ne v0, v1, :cond_2

    const/16 v0, 0xe

    .line 708
    aget-byte p1, p1, v0

    const/16 v0, -0x5b

    if-eq p1, v0, :cond_1

    const/16 v0, -0x4f

    if-eq p1, v0, :cond_1

    const/16 v0, -0x4e

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3b

    if-eq p1, v0, :cond_1

    .line 715
    sget-object p1, Lcom/smartsoft/ble/BleType;->JDY:Lcom/smartsoft/ble/BleType;

    return-object p1

    .line 713
    :cond_1
    sget-object p1, Lcom/smartsoft/ble/BleType;->JDY_Other:Lcom/smartsoft/ble/BleType;

    return-object p1

    .line 718
    :cond_2
    sget-object p1, Lcom/smartsoft/ble/BleType;->Unknown:Lcom/smartsoft/ble/BleType;

    return-object p1
.end method

.method private doStartLocation()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/smartsoft/ble/util/PermissionHelper;->isLocServiceEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "start location failure"

    .line 230
    invoke-virtual {p0, v0, v1}, Lcom/smartsoft/ble/Bluetooth;->setPermissionState(ZLjava/lang/String;)V

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/smartsoft/ble/Bluetooth$2;

    invoke-direct {v1, p0}, Lcom/smartsoft/ble/Bluetooth$2;-><init>(Lcom/smartsoft/ble/Bluetooth;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/smartsoft/ble/util/LocationUtils;->requestLocation(Landroid/content/Context;Lcom/smartsoft/ble/Bluetooth;)V

    return-void
.end method

.method private static isValidDevice(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 838
    :goto_0
    sget-object v2, Lcom/smartsoft/ble/Bluetooth;->deviceIds:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 839
    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static makeGattUpdateIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 585
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.smartsoft.ble.ACTION_GATT_CONNECTED"

    .line 587
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.smartsoft.ble.ACTION_GATT_DISCONNECTED"

    .line 588
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.smartsoft.ble.ACTION_GATT_SERVICES_DISCOVERED"

    .line 589
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.smartsoft.ble.ACTION_DATA_AVAILABLE"

    .line 590
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.smartsoft.ble.ACTION_DATA_AVAILABLE_FUNC"

    .line 591
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private nameByUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 637
    invoke-virtual {p0, p1}, Lcom/smartsoft/ble/Bluetooth;->itemByUuid(Ljava/lang/String;)Lcom/smartsoft/ble/BluetoothInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 641
    :cond_0
    iget-object p1, p1, Lcom/smartsoft/ble/BluetoothInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method private nameOfBluetoothInfo(Lcom/smartsoft/ble/BluetoothInfo;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    .line 822
    iget-object v0, p1, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartsoft/ble/BluetoothInfo;

    .line 827
    iget-object v2, v1, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    iget-object v3, p1, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    iget-object p1, v1, Lcom/smartsoft/ble/BluetoothInfo;->name:Ljava/lang/String;

    return-object p1

    .line 832
    :cond_2
    iget-object p1, p1, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static parseDeviceName([B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 762
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 764
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_7

    .line 765
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_2

    goto :goto_6

    .line 769
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const/16 v4, 0x14

    if-eq v3, v4, :cond_4

    const/16 v4, 0x15

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    goto :goto_5

    .line 802
    :pswitch_0
    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 803
    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 804
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    :pswitch_1
    const/4 v2, 0x4

    if-lt v1, v2, :cond_6

    .line 787
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    add-int/lit8 v1, v1, -0x4

    int-to-byte v1, v1

    goto :goto_1

    .line 773
    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3
    :goto_2
    :pswitch_3
    const/16 v2, 0x10

    if-lt v1, v2, :cond_6

    .line 795
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 796
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    add-int/lit8 v1, v1, -0x10

    int-to-byte v1, v1

    goto :goto_2

    :cond_4
    :goto_3
    :pswitch_4
    if-lt v1, v2, :cond_6

    .line 780
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    add-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    goto :goto_3

    .line 807
    :cond_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    add-int/lit8 v1, v1, -0x2

    :goto_4
    int-to-byte v1, v1

    :cond_6
    :goto_5
    if-lez v1, :cond_1

    .line 814
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_7
    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearDevice()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBleService:Lcom/smartsoft/ble/BleService;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/smartsoft/ble/BleService;->close()V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public connectState()I
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBleService:Lcom/smartsoft/ble/BleService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v0}, Lcom/smartsoft/ble/BleService;->connectState()I

    move-result v0

    return v0

    .line 292
    :cond_1
    :goto_0
    sget-object v0, Lcom/smartsoft/ble/ConnectState;->ConnectStateDisconnected:Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/ConnectState;->ordinal()I

    move-result v0

    return v0
.end method

.method public connectTo(Ljava/lang/String;)Z
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/smartsoft/ble/Bluetooth;->stopScan()V

    .line 423
    invoke-virtual {p0, p1}, Lcom/smartsoft/ble/Bluetooth;->itemByUuid(Ljava/lang/String;)Lcom/smartsoft/ble/BluetoothInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 429
    iget-boolean v2, p0, Lcom/smartsoft/ble/Bluetooth;->mConnected:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    .line 435
    iget-object v0, v0, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartsoft/ble/Bluetooth;->disconnectFrom(Ljava/lang/String;)V

    .line 438
    :cond_2
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    .line 442
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 443
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/smartsoft/ble/Bluetooth;->makeGattUpdateIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBleService:Lcom/smartsoft/ble/BleService;

    if-eqz v0, :cond_3

    .line 446
    iget-object v2, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    iget-object v2, v2, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/smartsoft/ble/BleService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 450
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/smartsoft/ble/BleService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    iget-object v2, p0, Lcom/smartsoft/ble/Bluetooth;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public currentUuid()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 416
    :cond_0
    iget-object v0, v0, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deviceState()I
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    sget-object v0, Lcom/smartsoft/ble/DeviceState;->StateUnauthorized:Lcom/smartsoft/ble/DeviceState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/DeviceState;->ordinal()I

    move-result v0

    return v0

    .line 284
    :pswitch_0
    sget-object v0, Lcom/smartsoft/ble/DeviceState;->StatePoweredOn:Lcom/smartsoft/ble/DeviceState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/DeviceState;->ordinal()I

    move-result v0

    return v0

    .line 283
    :pswitch_1
    sget-object v0, Lcom/smartsoft/ble/DeviceState;->StatePoweredOff:Lcom/smartsoft/ble/DeviceState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/DeviceState;->ordinal()I

    move-result v0

    return v0

    .line 275
    :cond_1
    :goto_0
    sget-object v0, Lcom/smartsoft/ble/DeviceState;->StateUnsupported:Lcom/smartsoft/ble/DeviceState;

    invoke-virtual {v0}, Lcom/smartsoft/ble/DeviceState;->ordinal()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disconnectFrom(Ljava/lang/String;)V
    .locals 0

    .line 466
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mBleService:Lcom/smartsoft/ble/BleService;

    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/smartsoft/ble/BleService;->close()V

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 470
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    const/4 p1, 0x0

    .line 471
    iput-boolean p1, p0, Lcom/smartsoft/ble/Bluetooth;->mConnected:Z

    :cond_1
    return-void
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 2

    .line 398
    invoke-virtual {p0, p1}, Lcom/smartsoft/ble/Bluetooth;->itemByUuid(Ljava/lang/String;)Lcom/smartsoft/ble/BluetoothInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 403
    :cond_0
    iget-boolean p1, p0, Lcom/smartsoft/ble/Bluetooth;->mConnected:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/smartsoft/ble/Bluetooth;->mActiveDevice:Lcom/smartsoft/ble/BluetoothInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/smartsoft/ble/Bluetooth;->connectState()I

    move-result p1

    sget-object v1, Lcom/smartsoft/ble/ConnectState;->ConnectStateConnected:Lcom/smartsoft/ble/ConnectState;

    invoke-virtual {v1}, Lcom/smartsoft/ble/ConnectState;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public isPermissionAllowed()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/smartsoft/ble/Bluetooth;->mPermissionAllowed:Z

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 393
    :cond_0
    iget-boolean v0, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    return v0
.end method

.method public itemByUuid(Ljava/lang/String;)Lcom/smartsoft/ble/BluetoothInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 622
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/smartsoft/ble/Bluetooth;->mDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartsoft/ble/BluetoothInfo;

    .line 627
    iget-object v3, v2, Lcom/smartsoft/ble/BluetoothInfo;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public notifyCharacteristicUuid()Ljava/lang/String;
    .locals 1

    .line 302
    sget-object v0, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_CHARACTERISTIC:Ljava/lang/String;

    return-object v0
.end method

.method public notifyServerUuid()Ljava/lang/String;
    .locals 1

    .line 298
    sget-object v0, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_SERVER:Ljava/lang/String;

    return-object v0
.end method

.method public permissionErrorString()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mPermissionErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public readCharacteristicUuid()Ljava/lang/String;
    .locals 1

    .line 304
    sget-object v0, Lcom/smartsoft/ble/BleService;->UUID_READ_CHARACTERISTIC:Ljava/lang/String;

    return-object v0
.end method

.method public setNotifyCharacteristicUuid(Ljava/lang/String;)V
    .locals 0

    .line 303
    sput-object p1, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_CHARACTERISTIC:Ljava/lang/String;

    return-void
.end method

.method public setNotifyServerUuid(Ljava/lang/String;)V
    .locals 0

    .line 299
    sput-object p1, Lcom/smartsoft/ble/BleService;->UUID_NOTIFY_SERVER:Ljava/lang/String;

    return-void
.end method

.method public setPermissionState(ZLjava/lang/String;)V
    .locals 1

    .line 258
    iput-boolean p1, p0, Lcom/smartsoft/ble/Bluetooth;->mPermissionAllowed:Z

    .line 259
    iput-object p2, p0, Lcom/smartsoft/ble/Bluetooth;->mPermissionErrorString:Ljava/lang/String;

    .line 260
    iget v0, p0, Lcom/smartsoft/ble/Bluetooth;->mCppThis:I

    invoke-static {v0, p1, p2}, Lcom/smartsoft/ble/NativeClass;->permissionStateChanged(IZLjava/lang/String;)V

    return-void
.end method

.method public setReadCharacteristicUuid(Ljava/lang/String;)V
    .locals 0

    .line 305
    sput-object p1, Lcom/smartsoft/ble/BleService;->UUID_READ_CHARACTERISTIC:Ljava/lang/String;

    return-void
.end method

.method public setWriteCharacteristicUuid(Ljava/lang/String;)V
    .locals 0

    .line 307
    sput-object p1, Lcom/smartsoft/ble/BleService;->UUID_WRITE_CHARACTERISTIC:Ljava/lang/String;

    return-void
.end method

.method public setWriteServeUuid(Ljava/lang/String;)V
    .locals 0

    .line 301
    sput-object p1, Lcom/smartsoft/ble/BleService;->UUID_WRITE_SERVER:Ljava/lang/String;

    return-void
.end method

.method public startScan()Z
    .locals 4

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    .line 317
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mScanCallback:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 318
    iput-boolean v1, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    return v1

    .line 321
    :cond_0
    sget-object v0, Lcom/smartsoft/ble/Bluetooth;->TAG:Ljava/lang/String;

    const-string v2, "startScan - use new version"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_1

    .line 324
    iput-boolean v1, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    return v1

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/smartsoft/ble/Bluetooth;->buildScanFilters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/smartsoft/ble/Bluetooth;->buildScanSettings()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/smartsoft/ble/Bluetooth;->mScanCallback:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/smartsoft/ble/Bluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    sget-object v0, Lcom/smartsoft/ble/Bluetooth;->TAG:Ljava/lang/String;

    const-string v2, "startLeScan failure!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput-boolean v1, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    return v0
.end method

.method public stopScan()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 348
    iput-boolean v1, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    return-void

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    if-nez v0, :cond_1

    return-void

    .line 357
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 358
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mScanCallback:Ljava/lang/Object;

    if-nez v0, :cond_2

    return-void

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 366
    :cond_3
    iget-object v2, p0, Lcom/smartsoft/ble/Bluetooth;->mScanCallback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/smartsoft/ble/Bluetooth;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 371
    :goto_0
    iput-boolean v1, p0, Lcom/smartsoft/ble/Bluetooth;->mScanning:Z

    return-void
.end method

.method public writeCharacteristicUuid()Ljava/lang/String;
    .locals 1

    .line 306
    sget-object v0, Lcom/smartsoft/ble/BleService;->UUID_WRITE_CHARACTERISTIC:Ljava/lang/String;

    return-object v0
.end method

.method public writeData([B)I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth;->mBleService:Lcom/smartsoft/ble/BleService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 269
    :cond_0
    invoke-virtual {v0, p1}, Lcom/smartsoft/ble/BleService;->writeData([B)I

    move-result p1

    return p1
.end method

.method public writeServeUuid()Ljava/lang/String;
    .locals 1

    .line 300
    sget-object v0, Lcom/smartsoft/ble/BleService;->UUID_WRITE_SERVER:Ljava/lang/String;

    return-object v0
.end method
