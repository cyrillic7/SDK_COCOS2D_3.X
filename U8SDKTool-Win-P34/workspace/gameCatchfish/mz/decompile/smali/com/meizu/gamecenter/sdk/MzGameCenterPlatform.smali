.class public Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 16
    invoke-static {}, Lcom/meizu/gamecenter/a/ae;->a()Lcom/meizu/gamecenter/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/meizu/gamecenter/a/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static final login(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzLoginListener;)V
    .registers 3

    .prologue
    .line 25
    invoke-static {}, Lcom/meizu/gamecenter/a/ae;->a()Lcom/meizu/gamecenter/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/gamecenter/a/ae;->a(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzLoginListener;)V

    .line 26
    return-void
.end method

.method public static final logout(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 39
    invoke-static {}, Lcom/meizu/gamecenter/a/ae;->a()Lcom/meizu/gamecenter/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/gamecenter/a/ae;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public static final payOnline(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzBuyInfo;Lcom/meizu/gamecenter/sdk/MzPayListener;)V
    .registers 4

    .prologue
    .line 33
    invoke-static {}, Lcom/meizu/gamecenter/a/ae;->a()Lcom/meizu/gamecenter/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/meizu/gamecenter/a/ae;->a(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzBuyInfo;Lcom/meizu/gamecenter/sdk/MzPayListener;)V

    .line 34
    return-void
.end method
