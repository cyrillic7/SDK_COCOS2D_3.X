.class final Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;I)V
    .registers 3

    .prologue
    .line 220
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$2;->b:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    iput p2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$2;->b:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$2;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 224
    return-void
.end method
