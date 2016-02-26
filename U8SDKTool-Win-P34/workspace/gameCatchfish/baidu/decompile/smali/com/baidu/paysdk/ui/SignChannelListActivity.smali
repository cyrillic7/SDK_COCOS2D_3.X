.class public Lcom/baidu/paysdk/ui/SignChannelListActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/SignChannelListActivity$1;,
        Lcom/baidu/paysdk/ui/SignChannelListActivity$GuidePageChangeListener;,
        Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;,
        Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;
    }
.end annotation


# static fields
.field private static final BEAN_TAG:Ljava/lang/String; = "SignChannelListActivity"


# instance fields
.field private getCardInfoBean:Lcom/baidu/paysdk/beans/g;

.field private mAct:Landroid/app/Activity;

.field private mBankCreditAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

.field private final mBankCreditList:Ljava/util/List;

.field private mBankCreditListView:Landroid/widget/ListView;

.field private mBankCreditView:Landroid/view/View;

.field private mBankDebitAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

.field private final mBankDebitList:Ljava/util/List;

.field private mBankDebitListView:Landroid/widget/ListView;

.field private mBankDebitView:Landroid/view/View;

.field private mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

.field private mPageViews:Ljava/util/List;

.field private mSignChannelBean:Lcom/baidu/paysdk/beans/k;

.field private mTabCredit:Landroid/widget/TextView;

.field private mTabDebit:Landroid/widget/TextView;

.field private mTabFirst:Landroid/view/View;

.field private mTabSecond:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mPageViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/baidu/paysdk/ui/SignChannelListActivity;Lcom/baidu/paysdk/beans/g;)Lcom/baidu/paysdk/beans/g;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mPageViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/paysdk/ui/SignChannelListActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->refreshUi(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method private initData()V
    .registers 5

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    if-nez v0, :cond_24

    new-instance v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-direct {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;-><init>()V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_bind_card_request"

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->addBeanRequestToCache(Ljava/lang/String;Lcom/baidu/wallet/core/beans/BeanRequestBase;)V

    :cond_24
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mSignChannelBean:Lcom/baidu/paysdk/beans/k;

    if-nez v0, :cond_40

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const/16 v2, 0x205

    const-string v3, "SignChannelListActivity"

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/k;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mSignChannelBean:Lcom/baidu/paysdk/beans/k;

    :cond_40
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mSignChannelBean:Lcom/baidu/paysdk/beans/k;

    invoke-virtual {v0, p0}, Lcom/baidu/paysdk/beans/k;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mSignChannelBean:Lcom/baidu/paysdk/beans/k;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/k;->execBean()V

    return-void
.end method

.method private initView()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v1, "bd_wallet_sign_channel_list"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->setContentView(I)V

    const-string v0, "bd_wallet_own_parent_banks"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->initActionBar(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v1, "bd_wallet_credit"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabCredit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v1, "bd_wallet_debit"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabDebit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v1, "bd_wallet_first_tab"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabFirst:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v1, "bd_wallet_second_tab"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabSecond:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v1, "bd_wallet_viewPager"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabCredit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabDebit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;

    invoke-direct {v1, p0, v2}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankPageAdapter;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;Lcom/baidu/paysdk/ui/SignChannelListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/baidu/paysdk/ui/SignChannelListActivity$GuidePageChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/baidu/paysdk/ui/SignChannelListActivity$GuidePageChangeListener;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;Lcom/baidu/paysdk/ui/SignChannelListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->refreshUi(Z)V

    return-void
.end method

.method private refreshUi(Z)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabCredit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v3, "bd_wallet_blue"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabDebit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v3, "bd_wallet_black"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabFirst:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabSecond:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabCredit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v3, "bd_wallet_black"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabDebit:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v3, "bd_wallet_blue"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->color(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabFirst:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabSecond:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38
.end method

.method private setUpView()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v2, "bd_wallet_sign_channel_page"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditView:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditView:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v3, "bd_wallet_bank_listview"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v2, "bd_wallet_sign_channel_page"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitView:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitView:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    const-string v2, "bd_wallet_bank_listview"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitListView:Landroid/widget/ListView;

    new-instance v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mPageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditListView:Landroid/widget/ListView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mPageViews:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitListView:Landroid/widget/ListView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public handleFailure(IILjava/lang/String;)V
    .registers 7

    const/4 v2, -0x1

    invoke-static {p0, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mSignChannelBean:Lcom/baidu/paysdk/beans/k;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/k;->getBeanId()I

    move-result v0

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    invoke-static {v0, p3}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->finish()V

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x4

    if-ne p1, v0, :cond_58

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    const v0, 0x186aa

    if-eq p2, v0, :cond_2b

    const v0, 0x186c8

    if-eq p2, v0, :cond_2b

    const v0, 0x186ba

    if-ne p2, v0, :cond_43

    :cond_2b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "errcode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->finish()V

    goto :goto_14

    :cond_43
    iput-object p3, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mDialogMsg:Ljava/lang/String;

    const/4 v0, -0x8

    if-ne p2, v0, :cond_50

    const/16 v0, 0xb

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_14

    :cond_50
    const/16 v0, 0xc

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_14

    :cond_58
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/wallet/core/beans/BeanActivity;->handleFailure(IILjava/lang/String;)V

    goto :goto_14
.end method

.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mSignChannelBean:Lcom/baidu/paysdk/beans/k;

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/k;->getBeanId()I

    move-result v0

    if-ne p1, v0, :cond_54

    move-object v0, p2

    check-cast v0, Lcom/baidu/paysdk/datamodel/SignChannelResponse;

    if-eqz v0, :cond_2f

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/SignChannelResponse;->arr_credit:[Lcom/baidu/paysdk/datamodel/SignBank;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditList:Ljava/util/List;

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/SignChannelResponse;->arr_credit:[Lcom/baidu/paysdk/datamodel/SignBank;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankCreditAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    invoke-virtual {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->notifyDataSetChanged()V

    :cond_2f
    if-eqz p2, :cond_53

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/SignChannelResponse;->arr_debit:[Lcom/baidu/paysdk/datamodel/SignBank;

    if-eqz v1, :cond_53

    iget-object v1, v0, Lcom/baidu/paysdk/datamodel/SignChannelResponse;->arr_debit:[Lcom/baidu/paysdk/datamodel/SignBank;

    array-length v1, v1

    if-lez v1, :cond_53

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitList:Ljava/util/List;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/SignChannelResponse;->arr_debit:[Lcom/baidu/paysdk/datamodel/SignBank;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBankDebitAdapter:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->notifyDataSetChanged()V

    :cond_53
    :goto_53
    return-void

    :cond_54
    const/4 v0, 0x4

    if-ne p1, v0, :cond_53

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    check-cast p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0, p2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmBankInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_144

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :goto_72
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    const-string v2, "mCardNoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setmBankCard(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v2, "key_pay_request"

    invoke-virtual {v0, v2}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_96

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v2, :cond_96

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->activity_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmChannelDiscountIds(Ljava/lang/String;)V

    :cond_96
    if-eqz v0, :cond_ad

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v2, :cond_ad

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->easypay_amount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ad

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->easypay_amount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmChannelDiscountAmount(Ljava/lang/String;)V

    :cond_ad
    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v2, :cond_c3

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->bank_no:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c3

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    iget-object v3, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v3, v3, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->bank_no:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBankNo:Ljava/lang/String;

    :cond_c3
    if-eqz v0, :cond_d9

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    if-eqz v2, :cond_d9

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->amount_before_channel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d9

    iget-object v2, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->amount_before_channel:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest;->mAmountBeforeChannel:Ljava/lang/String;

    :cond_d9
    iget-object v0, p2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->card_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;

    iget v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardInfo;->card_type:I

    if-ne v0, v4, :cond_13e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    if-eqz v0, :cond_134

    sget-object v0, Lcom/baidu/paysdk/ui/BindBaseActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->valid_code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    sget-object v0, Lcom/baidu/paysdk/ui/BindBaseActivity;->NOT_NEED_FILL:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankInfo()Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;->channel_info:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$ChannelInfo;->card_item_required:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/GetCardInfoResponse$CardItemRequired;->valid_date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    const-string v0, "is_bind_from_first"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v0, Lcom/baidu/paysdk/ui/BindCardDetailCredit2Activity;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->startActivityWithExtrasForBind(Landroid/os/Bundle;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->finishWithoutAnim()V

    goto/16 :goto_53

    :cond_134
    const-class v0, Lcom/baidu/paysdk/ui/BindCardDetailCreditActivity;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->startActivityWithExtrasForBind(Landroid/os/Bundle;Ljava/lang/Class;)V

    :goto_139
    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->finishWithoutAnim()V

    goto/16 :goto_53

    :cond_13e
    const-class v0, Lcom/baidu/paysdk/ui/BindCardDetailActivity;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->startActivityWithExtrasForBind(Landroid/os/Bundle;Ljava/lang/Class;)V

    goto :goto_139

    :cond_144
    move-object v1, v0

    goto/16 :goto_72
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabCredit:Landroid/widget/TextView;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mTabDebit:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->setFlagPaySdk()V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->setUpView()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->initView()V

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->initData()V

    return-void
.end method

.method startActivityWithExtrasForBind(Landroid/os/Bundle;Ljava/lang/Class;)V
    .registers 5

    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_14
    :goto_14
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_24
    if-nez p1, :cond_14

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    goto :goto_14
.end method
