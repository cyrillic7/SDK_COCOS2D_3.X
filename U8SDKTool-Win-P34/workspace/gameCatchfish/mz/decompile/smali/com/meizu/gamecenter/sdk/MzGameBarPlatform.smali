.class public Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GRAVITY_LEFT_BOTTOM:I = 0x2

.field public static final GRAVITY_LEFT_TOP:I = 0x1

.field public static final GRAVITY_RIGHT_BOTTOM:I = 0x4

.field public static final GRAVITY_RIGHT_TOP:I = 0x3


# instance fields
.field private mImpl:Lcom/meizu/gamecenter/a/t;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;-><init>(Landroid/app/Activity;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 5

    .prologue
    const/16 v0, 0x33

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    packed-switch p2, :pswitch_data_1a

    .line 39
    :goto_8
    :pswitch_8
    new-instance v1, Lcom/meizu/gamecenter/a/t;

    invoke-direct {v1, p1, v0}, Lcom/meizu/gamecenter/a/t;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->mImpl:Lcom/meizu/gamecenter/a/t;

    .line 40
    return-void

    .line 27
    :pswitch_10
    const/16 v0, 0x53

    .line 28
    goto :goto_8

    .line 33
    :pswitch_13
    const/16 v0, 0x55

    .line 34
    goto :goto_8

    .line 36
    :pswitch_16
    const/16 v0, 0x35

    goto :goto_8

    .line 25
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_10
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public hideGameBar()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->mImpl:Lcom/meizu/gamecenter/a/t;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/t;->f()V

    .line 63
    return-void
.end method

.method public onActivityCreate()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->mImpl:Lcom/meizu/gamecenter/a/t;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/t;->a()V

    .line 44
    return-void
.end method

.method public onActivityDestroy()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->mImpl:Lcom/meizu/gamecenter/a/t;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/t;->b()V

    .line 47
    return-void
.end method

.method public onActivityPause()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->mImpl:Lcom/meizu/gamecenter/a/t;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/t;->d()V

    .line 55
    return-void
.end method

.method public onActivityResume()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->mImpl:Lcom/meizu/gamecenter/a/t;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/t;->c()V

    .line 51
    return-void
.end method

.method public showGameBar()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->mImpl:Lcom/meizu/gamecenter/a/t;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/t;->e()V

    .line 59
    return-void
.end method
