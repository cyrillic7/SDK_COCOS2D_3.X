.class Lcom/duoku/platform/view/page/DKTabPageIndicator$b;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/page/DKTabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/page/DKTabPageIndicator;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 346
    iput-object p1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    .line 348
    const/4 v0, 0x0

    const-string v1, "vpiTabPageIndicatorStyle"

    invoke-static {p2, v1}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 349
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/page/DKTabPageIndicator$b;I)V
    .registers 2

    .prologue
    .line 343
    iput p1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 364
    iget v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->b:I

    return v0
.end method

.method public onMeasure(II)V
    .registers 5

    .prologue
    .line 354
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 356
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-static {v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->d(Lcom/duoku/platform/view/page/DKTabPageIndicator;)I

    move-result v0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-static {v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->d(Lcom/duoku/platform/view/page/DKTabPageIndicator;)I

    move-result v1

    if-le v0, v1, :cond_26

    .line 358
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->a:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-static {v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->d(Lcom/duoku/platform/view/page/DKTabPageIndicator;)I

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 360
    :cond_26
    return-void
.end method
