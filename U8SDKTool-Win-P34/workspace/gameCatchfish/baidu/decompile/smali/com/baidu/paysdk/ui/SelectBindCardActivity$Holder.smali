.class Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/SelectBindCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field private bankNO:Landroid/widget/TextView;

.field private bankName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankNO:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankNO:Landroid/widget/TextView;

    return-object p1
.end method
