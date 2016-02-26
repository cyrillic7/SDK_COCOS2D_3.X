.class Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private bankItemLayout:Landroid/widget/RelativeLayout;

.field private banklogo:Lcom/baidu/wallet/base/widget/NetImageView;

.field private bankname:Landroid/widget/TextView;

.field private groupTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

.field private title_layout:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;Lcom/baidu/paysdk/ui/SignChannelListActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$502(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Lcom/baidu/wallet/base/widget/NetImageView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->banklogo:Lcom/baidu/wallet/base/widget/NetImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Lcom/baidu/wallet/base/widget/NetImageView;)Lcom/baidu/wallet/base/widget/NetImageView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->banklogo:Lcom/baidu/wallet/base/widget/NetImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->bankname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->bankname:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->bankItemLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->bankItemLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method
