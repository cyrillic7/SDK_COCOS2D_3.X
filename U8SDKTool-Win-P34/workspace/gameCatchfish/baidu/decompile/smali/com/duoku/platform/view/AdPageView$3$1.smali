.class Lcom/duoku/platform/view/AdPageView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/AdPageView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/AdPageView$3;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/AdPageView$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/AdPageView$3$1;->a:Lcom/duoku/platform/view/AdPageView$3;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$3$1;->a:Lcom/duoku/platform/view/AdPageView$3;

    invoke-static {v0}, Lcom/duoku/platform/view/AdPageView$3;->a(Lcom/duoku/platform/view/AdPageView$3;)Lcom/duoku/platform/view/AdPageView;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/view/AdPageView;->b(Lcom/duoku/platform/view/AdPageView;)V

    .line 151
    return-void
.end method
