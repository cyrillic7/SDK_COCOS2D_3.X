.class public final Lcom/baidu/gamesdk/ActivityAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/baidu/gamesdk/ActivityAnalytics;->a:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .prologue
    .line 39
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 41
    iget-object v1, p0, Lcom/baidu/gamesdk/ActivityAnalytics;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/duoku/game/DKGameSDK;->onPause(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 32
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 34
    iget-object v1, p0, Lcom/baidu/gamesdk/ActivityAnalytics;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/duoku/game/DKGameSDK;->onResume(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    :cond_13
    return-void
.end method
