.class public Lcom/baidu/bdgame/sdk/obf/ks;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 27
    sget v0, Lcom/baidu/bdgame/sdk/obf/ju;->f:I

    packed-switch v0, :pswitch_data_10

    .line 34
    :pswitch_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 37
    :goto_9
    return-void

    .line 31
    :pswitch_a
    sget v0, Lcom/baidu/bdgame/sdk/obf/ju;->f:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_9

    .line 27
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method
