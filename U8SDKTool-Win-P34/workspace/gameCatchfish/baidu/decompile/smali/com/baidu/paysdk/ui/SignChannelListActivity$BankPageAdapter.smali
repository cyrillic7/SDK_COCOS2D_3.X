.class Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/SignChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BankPageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;Lcom/baidu/paysdk/ui/SignChannelListActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mPageViews:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mPageViews:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .registers 4

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mPageViews:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mPageViews:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2

    return-void
.end method
