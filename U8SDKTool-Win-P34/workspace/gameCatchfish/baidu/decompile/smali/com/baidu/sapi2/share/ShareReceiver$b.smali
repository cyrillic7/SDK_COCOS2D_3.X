.class Lcom/baidu/sapi2/share/ShareReceiver$b;
.super Ljava/lang/Object;
.source "ShareReceiver.java"

# interfaces
.implements Lcom/baidu/sapi2/share/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/ShareReceiver;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/share/ShareReceiver;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/ShareReceiver;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareReceiver$b;->a:Lcom/baidu/sapi2/share/ShareReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 4
    .param p1, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 114
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/baidu/sapi2/share/ShareReceiver;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne v0, v1, :cond_b

    .line 131
    :cond_a
    :goto_a
    return-void

    .line 117
    :cond_b
    sget-object v0, Lcom/baidu/sapi2/share/ShareReceiver$d;->a:[I

    invoke-virtual {p1}, Lcom/baidu/sapi2/share/ShareModel;->b()Lcom/baidu/sapi2/share/ShareEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/share/ShareEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    goto :goto_a

    .line 119
    :pswitch_1b
    invoke-static {}, Lcom/baidu/sapi2/share/ShareReceiver;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/baidu/sapi2/share/ShareReceiver;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_a

    .line 122
    :pswitch_27
    invoke-static {}, Lcom/baidu/sapi2/share/ShareReceiver;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_a

    .line 125
    :pswitch_2f
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareReceiver$b;->a:Lcom/baidu/sapi2/share/ShareReceiver;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/share/ShareReceiver;->a(Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_a

    .line 128
    :pswitch_35
    invoke-static {}, Lcom/baidu/sapi2/share/ShareReceiver;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/baidu/sapi2/share/ShareReceiver;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_a

    .line 117
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_27
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method
