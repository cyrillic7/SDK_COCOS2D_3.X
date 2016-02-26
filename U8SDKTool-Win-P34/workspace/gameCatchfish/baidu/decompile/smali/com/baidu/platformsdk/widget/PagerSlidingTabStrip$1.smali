.class final Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2b

    .line 187
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 192
    :goto_f
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;I)I

    .line 193
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->b(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;II)V

    .line 194
    return-void

    .line 189
    :cond_2b
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;->a:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_f
.end method
