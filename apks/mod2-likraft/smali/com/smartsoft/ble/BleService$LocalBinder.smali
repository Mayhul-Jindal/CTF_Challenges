.class public Lcom/smartsoft/ble/BleService$LocalBinder;
.super Landroid/os/Binder;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartsoft/ble/BleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartsoft/ble/BleService;


# direct methods
.method public constructor <init>(Lcom/smartsoft/ble/BleService;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/smartsoft/ble/BleService$LocalBinder;->this$0:Lcom/smartsoft/ble/BleService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/smartsoft/ble/BleService;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/smartsoft/ble/BleService$LocalBinder;->this$0:Lcom/smartsoft/ble/BleService;

    return-object v0
.end method
