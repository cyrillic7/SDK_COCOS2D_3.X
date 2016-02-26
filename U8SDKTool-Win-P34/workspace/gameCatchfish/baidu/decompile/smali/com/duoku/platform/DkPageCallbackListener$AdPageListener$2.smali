.class Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$2;
.super Lcom/duoku/platform/view/AdPageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;


# direct methods
.method constructor <init>(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$2;->a:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;

    .line 49
    invoke-direct {p0, p2}, Lcom/duoku/platform/view/AdPageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 54
    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->cancel()V

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/duoku/platform/DkPageCallbackListener;->access$3(Z)V

    .line 56
    iget-object v0, p0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$2;->a:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;

    invoke-virtual {v0}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->onComplete()V

    .line 57
    return-void
.end method
