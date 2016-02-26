.class public Lcom/baidu/platformsdk/widget/ExpandableTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/by;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x32

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->a:I

    .line 20
    iput v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->b:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->d:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v0, 0x32

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->a:I

    .line 20
    iput v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->b:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->d:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v0, 0x32

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->a:I

    .line 20
    iput v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->b:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->d:Z

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->c:Landroid/view/View;

    .line 55
    iput p2, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->b:I

    .line 56
    invoke-virtual {p0, p2}, Lcom/baidu/platformsdk/widget/ExpandableTextView;->setMaxLines(I)V

    .line 57
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->d:Z

    if-eqz v0, :cond_12

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->d:Z

    .line 66
    iget v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->b:I

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/ExpandableTextView;->setMaxLines(I)V

    .line 71
    :goto_c
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/ExpandableTextView;->invalidate()V

    .line 72
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->d:Z

    return v0

    .line 68
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->d:Z

    .line 69
    iget v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->a:I

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/ExpandableTextView;->setMaxLines(I)V

    goto :goto_c
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 41
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->c:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 42
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/ExpandableTextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->b:I

    if-gt v0, v1, :cond_16

    .line 43
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/ExpandableTextView;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_16
    return-void
.end method
