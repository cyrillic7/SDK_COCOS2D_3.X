.class Lcom/baidu/sapi2/c$K;
.super Landroid/os/Handler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Landroid/os/Looper;[Z)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 3156
    iput-object p1, p0, Lcom/baidu/sapi2/c$K;->b:Lcom/baidu/sapi2/c;

    iput-object p3, p0, Lcom/baidu/sapi2/c$K;->a:[Z

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 3166
    :goto_5
    return-void

    .line 3161
    :pswitch_6
    iget-object v0, p0, Lcom/baidu/sapi2/c$K;->a:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    goto :goto_5

    .line 3159
    nop

    :pswitch_data_e
    .packed-switch 0x3e9
        :pswitch_6
    .end packed-switch
.end method
