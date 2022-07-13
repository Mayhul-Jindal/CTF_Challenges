.class Lcom/smartsoft/ble/Bluetooth$2;
.super Ljava/lang/Object;
.source "Bluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartsoft/ble/Bluetooth;->doStartLocation()V
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

    .line 232
    iput-object p1, p0, Lcom/smartsoft/ble/Bluetooth$2;->this$0:Lcom/smartsoft/ble/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/smartsoft/ble/Bluetooth$2;->this$0:Lcom/smartsoft/ble/Bluetooth;

    iget-object v0, v0, Lcom/smartsoft/ble/Bluetooth;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/smartsoft/ble/util/DialogUtil;->showLocServiceDialog(Landroid/app/Activity;)V

    return-void
.end method
