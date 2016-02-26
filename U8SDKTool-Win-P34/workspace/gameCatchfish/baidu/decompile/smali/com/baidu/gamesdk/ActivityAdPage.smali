.class public final Lcom/baidu/gamesdk/ActivityAdPage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/gamesdk/ActivityAdPage$a;,
        Lcom/baidu/gamesdk/ActivityAdPage$Listener;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/gamesdk/ActivityAdPage$Listener;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/gamesdk/ActivityAdPage$Listener;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/baidu/gamesdk/ActivityAdPage$Listener;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->b:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->d:Z

    .line 36
    iput-object p2, p0, Lcom/baidu/gamesdk/ActivityAdPage;->a:Lcom/baidu/gamesdk/ActivityAdPage$Listener;

    .line 37
    iput-object p1, p0, Lcom/baidu/gamesdk/ActivityAdPage;->c:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/baidu/gamesdk/ActivityAdPage;)Lcom/baidu/gamesdk/ActivityAdPage$Listener;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->a:Lcom/baidu/gamesdk/ActivityAdPage$Listener;

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->d:Z

    if-nez v0, :cond_10

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->d:Z

    .line 91
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->e:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;

    if-eqz v0, :cond_10

    .line 92
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->e:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;

    invoke-static {v0}, Lcom/duoku/platform/DkPlatform;->closeAdView(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V

    .line 95
    :cond_10
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/baidu/gamesdk/ActivityAdPage;->a()V

    .line 73
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    invoke-direct {p0}, Lcom/baidu/gamesdk/ActivityAdPage;->a()V

    .line 69
    :cond_d
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->b:Z

    if-nez v0, :cond_19

    .line 50
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->e:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;

    if-nez v0, :cond_11

    .line 51
    new-instance v0, Lcom/baidu/gamesdk/ActivityAdPage$a;

    iget-object v1, p0, Lcom/baidu/gamesdk/ActivityAdPage;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/baidu/gamesdk/ActivityAdPage$a;-><init>(Lcom/baidu/gamesdk/ActivityAdPage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->e:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;

    .line 53
    :cond_11
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->e:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;

    invoke-static {v0}, Lcom/duoku/platform/DkPlatform;->pause(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->b:Z

    .line 56
    :cond_19
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/DkPlatform;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/gamesdk/ActivityAdPage;->b:Z

    .line 62
    :cond_b
    return-void
.end method
