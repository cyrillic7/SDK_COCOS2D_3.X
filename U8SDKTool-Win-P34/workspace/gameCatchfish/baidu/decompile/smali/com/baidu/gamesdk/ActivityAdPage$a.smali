.class Lcom/baidu/gamesdk/ActivityAdPage$a;
.super Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/gamesdk/ActivityAdPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/gamesdk/ActivityAdPage;


# direct methods
.method public constructor <init>(Lcom/baidu/gamesdk/ActivityAdPage;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/gamesdk/ActivityAdPage$a;->a:Lcom/baidu/gamesdk/ActivityAdPage;

    .line 77
    invoke-direct {p0, p2}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;-><init>(Landroid/content/Context;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage$a;->a:Lcom/baidu/gamesdk/ActivityAdPage;

    invoke-static {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->a(Lcom/baidu/gamesdk/ActivityAdPage;)Lcom/baidu/gamesdk/ActivityAdPage$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 83
    iget-object v0, p0, Lcom/baidu/gamesdk/ActivityAdPage$a;->a:Lcom/baidu/gamesdk/ActivityAdPage;

    invoke-static {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->a(Lcom/baidu/gamesdk/ActivityAdPage;)Lcom/baidu/gamesdk/ActivityAdPage$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/gamesdk/ActivityAdPage$Listener;->onClose()V

    .line 85
    :cond_11
    return-void
.end method
