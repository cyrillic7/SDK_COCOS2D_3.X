.class public Lcom/duoku/platform/view/common/DKMarqueeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/common/DKMarqueeTextView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/duoku/platform/view/common/DKMarqueeTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object p1, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView;->a:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView;->b:Lcom/duoku/platform/view/common/DKMarqueeTextView$a;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView;->b:Lcom/duoku/platform/view/common/DKMarqueeTextView$a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 80
    iget-object v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView;->b:Lcom/duoku/platform/view/common/DKMarqueeTextView$a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->c()F

    move-result v0

    neg-float v0, v0

    .line 85
    iget-object v0, p0, Lcom/duoku/platform/view/common/DKMarqueeTextView;->b:Lcom/duoku/platform/view/common/DKMarqueeTextView$a;

    invoke-static {v0}, Lcom/duoku/platform/view/common/DKMarqueeTextView$a;->a(Lcom/duoku/platform/view/common/DKMarqueeTextView$a;)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    :cond_1e
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    return-void
.end method
