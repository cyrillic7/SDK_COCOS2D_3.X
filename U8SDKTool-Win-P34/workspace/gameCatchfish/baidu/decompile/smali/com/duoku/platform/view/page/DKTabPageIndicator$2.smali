.class Lcom/duoku/platform/view/page/DKTabPageIndicator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/page/DKTabPageIndicator;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/page/DKTabPageIndicator;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    iput-object p2, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;->b:Landroid/view/View;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-virtual {v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 161
    iget-object v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->smoothScrollTo(II)V

    .line 162
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(Lcom/duoku/platform/view/page/DKTabPageIndicator;Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
