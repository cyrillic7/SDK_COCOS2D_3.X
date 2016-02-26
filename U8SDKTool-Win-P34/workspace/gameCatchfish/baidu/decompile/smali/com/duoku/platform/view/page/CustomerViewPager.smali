.class public Lcom/duoku/platform/view/page/CustomerViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 7

    .prologue
    .line 21
    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_6

    .line 22
    const/4 v0, 0x1

    .line 24
    :goto_5
    return v0

    :cond_6
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    goto :goto_5
.end method
