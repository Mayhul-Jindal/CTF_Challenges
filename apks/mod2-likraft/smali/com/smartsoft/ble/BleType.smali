.class final enum Lcom/smartsoft/ble/BleType;
.super Ljava/lang/Enum;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smartsoft/ble/BleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smartsoft/ble/BleType;

.field public static final enum JDY:Lcom/smartsoft/ble/BleType;

.field public static final enum JDY_Other:Lcom/smartsoft/ble/BleType;

.field public static final enum Unknown:Lcom/smartsoft/ble/BleType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/smartsoft/ble/BleType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smartsoft/ble/BleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartsoft/ble/BleType;->Unknown:Lcom/smartsoft/ble/BleType;

    .line 38
    new-instance v1, Lcom/smartsoft/ble/BleType;

    const-string v3, "JDY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/smartsoft/ble/BleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/smartsoft/ble/BleType;->JDY:Lcom/smartsoft/ble/BleType;

    .line 39
    new-instance v3, Lcom/smartsoft/ble/BleType;

    const-string v5, "JDY_Other"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/smartsoft/ble/BleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/smartsoft/ble/BleType;->JDY_Other:Lcom/smartsoft/ble/BleType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/smartsoft/ble/BleType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 36
    sput-object v5, Lcom/smartsoft/ble/BleType;->$VALUES:[Lcom/smartsoft/ble/BleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartsoft/ble/BleType;
    .locals 1

    .line 36
    const-class v0, Lcom/smartsoft/ble/BleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartsoft/ble/BleType;

    return-object p0
.end method

.method public static values()[Lcom/smartsoft/ble/BleType;
    .locals 1

    .line 36
    sget-object v0, Lcom/smartsoft/ble/BleType;->$VALUES:[Lcom/smartsoft/ble/BleType;

    invoke-virtual {v0}, [Lcom/smartsoft/ble/BleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartsoft/ble/BleType;

    return-object v0
.end method
