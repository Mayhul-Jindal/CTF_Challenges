.class public final Lcom/smartsoft/ble/JBluetoothUuid;
.super Ljava/lang/Object;
.source "JBluetoothUuid.java"


# static fields
.field public static final AdvAudioDist:Landroid/os/ParcelUuid;

.field public static final AudioSink:Landroid/os/ParcelUuid;

.field public static final AudioSource:Landroid/os/ParcelUuid;

.field public static final AvrcpController:Landroid/os/ParcelUuid;

.field public static final AvrcpTarget:Landroid/os/ParcelUuid;

.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field public static final BNEP:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final Handsfree:Landroid/os/ParcelUuid;

.field public static final Handsfree_AG:Landroid/os/ParcelUuid;

.field public static final HearingAid:Landroid/os/ParcelUuid;

.field public static final Hid:Landroid/os/ParcelUuid;

.field public static final Hogp:Landroid/os/ParcelUuid;

.field public static final MAP:Landroid/os/ParcelUuid;

.field public static final MAS:Landroid/os/ParcelUuid;

.field public static final MNS:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final ObexObjectPush:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PCE:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;

.field public static final RESERVED_UUIDS:[Landroid/os/ParcelUuid;

.field public static final SAP:Landroid/os/ParcelUuid;

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "0000110B-0000-1000-8000-00805F9B34FB"

    .line 41
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    const-string v1, "0000110A-0000-1000-8000-00805F9B34FB"

    .line 43
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    sput-object v1, Lcom/smartsoft/ble/JBluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const-string v2, "0000110D-0000-1000-8000-00805F9B34FB"

    .line 45
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    sput-object v2, Lcom/smartsoft/ble/JBluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const-string v3, "00001108-0000-1000-8000-00805F9B34FB"

    .line 47
    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    sput-object v3, Lcom/smartsoft/ble/JBluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const-string v4, "00001112-0000-1000-8000-00805F9B34FB"

    .line 49
    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    sput-object v4, Lcom/smartsoft/ble/JBluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    const-string v4, "0000111E-0000-1000-8000-00805F9B34FB"

    .line 51
    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    sput-object v4, Lcom/smartsoft/ble/JBluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const-string v5, "0000111F-0000-1000-8000-00805F9B34FB"

    .line 53
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    sput-object v5, Lcom/smartsoft/ble/JBluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    const-string v5, "0000110E-0000-1000-8000-00805F9B34FB"

    .line 55
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    sput-object v5, Lcom/smartsoft/ble/JBluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    const-string v6, "0000110C-0000-1000-8000-00805F9B34FB"

    .line 57
    invoke-static {v6}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    sput-object v6, Lcom/smartsoft/ble/JBluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    const-string v7, "00001105-0000-1000-8000-00805f9b34fb"

    .line 59
    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v7

    sput-object v7, Lcom/smartsoft/ble/JBluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    const-string v8, "00001124-0000-1000-8000-00805f9b34fb"

    .line 61
    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v8

    sput-object v8, Lcom/smartsoft/ble/JBluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    const-string v8, "00001812-0000-1000-8000-00805f9b34fb"

    .line 63
    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v8

    sput-object v8, Lcom/smartsoft/ble/JBluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    const-string v8, "00001115-0000-1000-8000-00805F9B34FB"

    .line 65
    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v8

    sput-object v8, Lcom/smartsoft/ble/JBluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    const-string v9, "00001116-0000-1000-8000-00805F9B34FB"

    .line 67
    invoke-static {v9}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v9

    sput-object v9, Lcom/smartsoft/ble/JBluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    const-string v10, "0000000f-0000-1000-8000-00805F9B34FB"

    .line 69
    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v10

    sput-object v10, Lcom/smartsoft/ble/JBluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    const-string v10, "0000112e-0000-1000-8000-00805F9B34FB"

    .line 71
    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v10

    sput-object v10, Lcom/smartsoft/ble/JBluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    const-string v10, "0000112f-0000-1000-8000-00805F9B34FB"

    .line 73
    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v10

    sput-object v10, Lcom/smartsoft/ble/JBluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    const-string v10, "00001134-0000-1000-8000-00805F9B34FB"

    .line 75
    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v10

    sput-object v10, Lcom/smartsoft/ble/JBluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    const-string v11, "00001133-0000-1000-8000-00805F9B34FB"

    .line 77
    invoke-static {v11}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v11

    sput-object v11, Lcom/smartsoft/ble/JBluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    const-string v12, "00001132-0000-1000-8000-00805F9B34FB"

    .line 79
    invoke-static {v12}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v12

    sput-object v12, Lcom/smartsoft/ble/JBluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    const-string v13, "0000112D-0000-1000-8000-00805F9B34FB"

    .line 81
    invoke-static {v13}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v13

    sput-object v13, Lcom/smartsoft/ble/JBluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const-string v14, "0000FDF0-0000-1000-8000-00805f9b34fb"

    .line 83
    invoke-static {v14}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v14

    sput-object v14, Lcom/smartsoft/ble/JBluetoothUuid;->HearingAid:Landroid/os/ParcelUuid;

    const-string v14, "00000000-0000-1000-8000-00805F9B34FB"

    .line 86
    invoke-static {v14}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v14

    sput-object v14, Lcom/smartsoft/ble/JBluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    const/16 v14, 0xe

    new-array v14, v14, [Landroid/os/ParcelUuid;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v2, v14, v0

    const/4 v0, 0x3

    aput-object v3, v14, v0

    const/4 v0, 0x4

    aput-object v4, v14, v0

    const/4 v0, 0x5

    aput-object v5, v14, v0

    const/4 v0, 0x6

    aput-object v6, v14, v0

    const/4 v0, 0x7

    aput-object v7, v14, v0

    const/16 v0, 0x8

    aput-object v8, v14, v0

    const/16 v0, 0x9

    aput-object v9, v14, v0

    const/16 v0, 0xa

    aput-object v10, v14, v0

    const/16 v0, 0xb

    aput-object v11, v14, v0

    const/16 v0, 0xc

    aput-object v12, v14, v0

    const/16 v0, 0xd

    aput-object v13, v14, v0

    .line 95
    sput-object v14, Lcom/smartsoft/ble/JBluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 215
    array-length p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_3

    return v0

    .line 220
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 221
    array-length p0, p1

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_5

    aget-object v4, p1, v3

    .line 222
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 190
    array-length p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_4

    .line 194
    array-length p0, p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 197
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 198
    array-length p0, p1

    move v3, v1

    :goto_2
    if-ge v3, p0, :cond_6

    aget-object v4, p1, v3

    .line 199
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .locals 4

    .line 236
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static is16BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 6

    .line 334
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    sget-object v2, Lcom/smartsoft/ble/JBluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 338
    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const-wide v4, -0xffff00000001L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static is32BitUuid(Landroid/os/ParcelUuid;)Z
    .locals 5

    .line 349
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    sget-object v3, Lcom/smartsoft/ble/JBluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 353
    :cond_0
    invoke-static {p0}, Lcom/smartsoft/ble/JBluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 356
    :cond_1
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    const-wide/16 v3, 0x1000

    cmp-long p0, v0, v3

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isAdvAudioDist(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 108
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAudioSink(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 104
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAudioSource(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 100
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAvrcpController(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 120
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isAvrcpTarget(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 124
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isBnep(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 140
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHandsfree(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 112
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isHeadset(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 116
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isInputDevice(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 128
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMap(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 144
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMas(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 152
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMns(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 148
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNap(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 136
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPanu(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 132
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSap(Landroid/os/ParcelUuid;)Z
    .locals 1

    .line 156
    sget-object v0, Lcom/smartsoft/ble/JBluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 166
    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-nez p0, :cond_2

    return v1

    .line 174
    :cond_2
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 175
    invoke-virtual {v4, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 8

    if-eqz p0, :cond_4

    .line 254
    array-length v0, p0

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuidBytes length invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v1, :cond_2

    .line 262
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 263
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 264
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 265
    new-instance p0, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p0, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p0

    :cond_2
    const/4 v5, 0x1

    if-ne v0, v2, :cond_3

    .line 272
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 273
    aget-byte p0, p0, v5

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v4

    int-to-long v2, p0

    add-long/2addr v0, v2

    goto :goto_1

    .line 275
    :cond_3
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    .line 276
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 277
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v6, v0

    const/4 v0, 0x3

    .line 278
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    int-to-long v0, p0

    add-long/2addr v0, v6

    .line 280
    :goto_1
    sget-object p0, Lcom/smartsoft/ble/JBluetoothUuid;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 281
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 282
    new-instance p0, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p0, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p0

    .line 252
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uuidBytes cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uuidToBytes(Landroid/os/ParcelUuid;)[B
    .locals 8

    if-eqz p0, :cond_2

    .line 298
    invoke-static {p0}, Lcom/smartsoft/ble/JBluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v0

    const v1, 0xff00

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-array v0, v3, [B

    .line 300
    invoke-static {p0}, Lcom/smartsoft/ble/JBluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result p0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    and-int/2addr p0, v1

    shr-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    return-object v0

    .line 306
    :cond_0
    invoke-static {p0}, Lcom/smartsoft/ble/JBluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v0

    const/16 v6, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 308
    invoke-static {p0}, Lcom/smartsoft/ble/JBluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result p0

    and-int/lit16 v7, p0, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    and-int/2addr v1, p0

    shr-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr p0, v2

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0

    .line 317
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 318
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    new-array p0, v6, [B

    .line 321
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 322
    invoke-virtual {v6, v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 323
    invoke-virtual {v6, v5, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-object p0

    .line 295
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uuid cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
