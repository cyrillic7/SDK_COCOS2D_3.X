.class Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;I)V
    .registers 3

    .prologue
    .line 161
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;->a:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p2, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;->b:I

    .line 163
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 168
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;->a:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->a(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a$1;-><init>(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;->a:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;)Lcom/baidu/bdgame/sdk/obf/dh;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 176
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;->a:Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;->b(Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout;)Lcom/baidu/bdgame/sdk/obf/dh;

    move-result-object v0

    iget v1, p0, Lcom/baidu/platformsdk/pay/cashier/paychannel/PayChannelListLayout$a;->b:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dh;->c(I)V

    .line 178
    :cond_27
    return-void
.end method
