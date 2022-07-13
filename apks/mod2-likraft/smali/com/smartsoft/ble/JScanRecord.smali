.class public final Lcom/smartsoft/ble/JScanRecord;
.super Ljava/lang/Object;
.source "JScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field private static final DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field private static final DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_128_BIT:I = 0x15

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_16_BIT:I = 0x14

.field private static final DATA_TYPE_SERVICE_SOLICITATION_UUIDS_32_BIT:I = 0x1f

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "JScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceSolicitationUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    .line 153
    iput-object p1, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceUuids:Ljava/util/List;

    .line 154
    iput-object p3, p0, Lcom/smartsoft/ble/JScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 155
    iput-object p4, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceData:Ljava/util/Map;

    .line 156
    iput-object p7, p0, Lcom/smartsoft/ble/JScanRecord;->mDeviceName:Ljava/lang/String;

    .line 157
    iput p5, p0, Lcom/smartsoft/ble/JScanRecord;->mAdvertiseFlags:I

    .line 158
    iput p6, p0, Lcom/smartsoft/ble/JScanRecord;->mTxPowerLevel:I

    .line 159
    iput-object p8, p0, Lcom/smartsoft/ble/JScanRecord;->mBytes:[B

    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2

    .line 324
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 325
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parseFromBytes([B)Lcom/smartsoft/ble/JScanRecord;
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/high16 v4, -0x80000000

    .line 185
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 186
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v0

    move v9, v2

    move v10, v4

    .line 189
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    .line 191
    aget-byte v1, p0, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v5, v2, 0x1

    .line 198
    aget-byte v2, p0, v2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_4

    const/16 v12, 0x10

    const/4 v13, 0x4

    const/4 v14, 0x2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto :goto_2

    .line 223
    :pswitch_0
    invoke-static {p0, v5, v1, v13, v6}, Lcom/smartsoft/ble/JScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    goto :goto_2

    :pswitch_1
    const/16 v4, 0x20

    if-ne v2, v4, :cond_2

    move v12, v13

    goto :goto_1

    :cond_2
    const/16 v4, 0x21

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v12, v14

    .line 248
    :goto_1
    invoke-static {p0, v5, v12}, Lcom/smartsoft/ble/JScanRecord;->extractBytes([BII)[B

    move-result-object v2

    .line 250
    invoke-static {v2}, Lcom/smartsoft/ble/JBluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v2

    add-int v4, v5, v12

    sub-int v12, v1, v12

    .line 252
    invoke-static {p0, v4, v12}, Lcom/smartsoft/ble/JScanRecord;->extractBytes([BII)[B

    move-result-object v4

    .line 254
    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 227
    :pswitch_2
    invoke-static {p0, v5, v1, v12, v6}, Lcom/smartsoft/ble/JScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 219
    :pswitch_3
    invoke-static {p0, v5, v1, v14, v6}, Lcom/smartsoft/ble/JScanRecord;->parseServiceSolicitationUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 236
    :pswitch_4
    aget-byte v10, p0, v5

    goto :goto_2

    .line 232
    :pswitch_5
    new-instance v11, Ljava/lang/String;

    .line 233
    invoke-static {p0, v5, v1}, Lcom/smartsoft/ble/JScanRecord;->extractBytes([BII)[B

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 215
    :pswitch_6
    invoke-static {p0, v5, v1, v12, v3}, Lcom/smartsoft/ble/JScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 210
    :pswitch_7
    invoke-static {p0, v5, v1, v13, v3}, Lcom/smartsoft/ble/JScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 205
    :pswitch_8
    invoke-static {p0, v5, v1, v14, v3}, Lcom/smartsoft/ble/JScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 201
    :pswitch_9
    aget-byte v2, p0, v5

    and-int/2addr v2, v4

    move v9, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v5, 0x1

    .line 259
    aget-byte v2, p0, v2

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x8

    aget-byte v12, p0, v5

    and-int/2addr v4, v12

    add-int/2addr v2, v4

    .line 262
    invoke-static {p0, v5, v1}, Lcom/smartsoft/ble/JScanRecord;->extractBytes([BII)[B

    move-result-object v4

    .line 263
    invoke-virtual {v7, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr v1, v5

    goto/16 :goto_0

    .line 272
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v5, v0

    goto :goto_4

    :cond_6
    move-object v5, v3

    .line 275
    :goto_4
    new-instance v0, Lcom/smartsoft/ble/JScanRecord;

    move-object v4, v0

    move-object v12, p0

    invoke-direct/range {v4 .. v12}, Lcom/smartsoft/ble/JScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to parse scan record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JScanRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Lcom/smartsoft/ble/JScanRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    move-object v2, v0

    move-object v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/smartsoft/ble/JScanRecord;-><init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static parseServiceSolicitationUuid([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_0

    .line 314
    invoke-static {p0, p1, p3}, Lcom/smartsoft/ble/JScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/smartsoft/ble/JBluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_0

    .line 299
    invoke-static {p0, p1, p3}, Lcom/smartsoft/ble/JScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/smartsoft/ble/JBluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/smartsoft/ble/JScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/smartsoft/ble/JScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/smartsoft/ble/JScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/smartsoft/ble/JScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/smartsoft/ble/JScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1

    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceData:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getServiceSolicitationUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/smartsoft/ble/JScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartsoft/ble/JScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSolicitationUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceSolicitationUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartsoft/ble/JScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 289
    invoke-static {v1}, Lcom/smartsoft/ble/JBluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartsoft/ble/JScanRecord;->mServiceData:Ljava/util/Map;

    .line 291
    invoke-static {v1}, Lcom/smartsoft/ble/JBluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartsoft/ble/JScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartsoft/ble/JScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
