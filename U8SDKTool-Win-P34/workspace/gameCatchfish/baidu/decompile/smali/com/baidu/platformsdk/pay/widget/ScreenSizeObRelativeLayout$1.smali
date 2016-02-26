.class final Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$1;->a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 36
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$1;->a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;)Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 37
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$1;->a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->a(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;)Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$1;->a:Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;

    invoke-static {v1}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;->b(Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/platformsdk/pay/widget/ScreenSizeObRelativeLayout$a;->a(Z)V

    .line 39
    :cond_1a
    return-void
.end method
