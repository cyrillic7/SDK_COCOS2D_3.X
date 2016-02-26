.class public Lcom/duoku/platform/view/user/a;
.super Lcom/duoku/platform/view/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/user/a$a;,
        Lcom/duoku/platform/view/user/a$b;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String;

.field public static i:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lcom/duoku/platform/view/user/CircleImage;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/view/animation/Animation;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Lcom/duoku/a/a/a/a/a;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Landroid/widget/TextView;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field public a:Landroid/widget/ScrollView;

.field private aA:Landroid/widget/EditText;

.field private aB:Landroid/widget/Button;

.field private aC:Landroid/widget/Button;

.field private aD:Z

.field private aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aG:Landroid/widget/TextView;

.field private aH:Landroid/widget/EditText;

.field private aI:Landroid/widget/EditText;

.field private aJ:Landroid/widget/EditText;

.field private aK:Landroid/widget/Button;

.field private aL:Ljava/lang/String;

.field private aM:Ljava/lang/String;

.field private aN:Ljava/lang/String;

.field private aO:Landroid/widget/TableRow;

.field private aP:Landroid/widget/TextView;

.field private aQ:Landroid/widget/EditText;

.field private aR:Landroid/widget/Button;

.field private aS:Landroid/widget/Button;

.field private aT:Landroid/widget/EditText;

.field private aU:Landroid/widget/EditText;

.field private aV:Landroid/widget/EditText;

.field private aW:Landroid/widget/Button;

.field private aX:Landroid/widget/Button;

.field private aY:Z

.field private aZ:Z

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:I

.field private ah:Z

.field private ai:Landroid/widget/EditText;

.field private aj:Landroid/widget/EditText;

.field private ak:Landroid/widget/Button;

.field private al:Landroid/widget/Button;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/TextView;

.field private ap:Landroid/widget/ImageView;

.field private aq:Landroid/widget/TableRow;

.field private ar:Landroid/widget/TableRow;

.field private as:Landroid/widget/TableRow;

.field private at:Landroid/widget/LinearLayout;

.field private au:Landroid/widget/LinearLayout;

.field private av:Landroid/widget/LinearLayout;

.field private aw:Landroid/widget/LinearLayout;

.field private ax:Landroid/widget/LinearLayout;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/widget/EditText;

.field public b:Lcom/duoku/platform/view/user/a$b;

.field private ba:Z

.field private bb:Landroid/view/View;

.field private bc:Landroid/view/View;

.field private bd:Landroid/widget/TextView;

.field private be:Landroid/widget/LinearLayout;

.field private bf:Landroid/widget/LinearLayout;

.field private bg:Landroid/widget/TextView;

.field private bh:Landroid/widget/LinearLayout;

.field private bi:Landroid/widget/LinearLayout;

.field private bj:Landroid/os/Handler;

.field private bk:Ljava/lang/Runnable;

.field private bl:Lcom/duoku/platform/e/a;

.field private bm:D

.field private bn:Landroid/view/View$OnClickListener;

.field j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/LinearLayout;

.field m:Landroid/widget/LinearLayout;

.field n:Landroid/widget/LinearLayout;

.field o:Landroid/widget/LinearLayout;

.field p:Landroid/widget/RelativeLayout;

.field public q:Landroid/view/View$OnClickListener;

.field public r:Landroid/widget/ScrollView;

.field s:Landroid/widget/TextView;

.field public t:Landroid/widget/LinearLayout;

.field public u:Landroid/widget/LinearLayout;

.field public v:Landroid/widget/TextView;

.field public w:Z

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/TextView;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/view/user/a;->c:Ljava/lang/String;

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 355
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/b;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v0, "2"

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->O:Ljava/lang/String;

    .line 110
    const-string v0, "2"

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->P:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->V:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->W:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->X:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->Y:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->Z:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aa:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ab:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ac:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ad:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ae:Ljava/lang/String;

    .line 217
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/a;->aY:Z

    .line 218
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/a;->aZ:Z

    .line 219
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/a;->ba:Z

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bj:Landroid/os/Handler;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/user/a;->w:Z

    .line 1785
    new-instance v0, Lcom/duoku/platform/view/user/a$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/a$1;-><init>(Lcom/duoku/platform/view/user/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bn:Landroid/view/View$OnClickListener;

    .line 356
    return-void
.end method

.method static synthetic A(Lcom/duoku/platform/view/user/a;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private A()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1047
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1048
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->au:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->av:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aw:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ax:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1057
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1059
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->an:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1060
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_btn_string_modify_phone"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->ao:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    :goto_69
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 1071
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 1072
    if-eqz v0, :cond_92

    .line 1074
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->A:Ljava/lang/String;

    .line 1075
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->am:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    :cond_92
    return-void

    .line 1065
    :cond_93
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->an:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_tv_string_account_no_bind"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1066
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ao:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_btn_string_bind_phone"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_69
.end method

.method static synthetic B(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method private B()V
    .registers 4

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "identification"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/view/user/a;->aD:Z

    .line 1643
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "identifyname"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aE:Ljava/lang/String;

    .line 1644
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "identifynumber"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    .line 1645
    return-void
.end method

.method static synthetic C(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->L:Ljava/lang/String;

    return-object v0
.end method

.method private C()V
    .registers 4

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1650
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_editview_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1651
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1652
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1653
    return-void
.end method

.method static synthetic D(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->M:Ljava/lang/String;

    return-object v0
.end method

.method private D()V
    .registers 4

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1658
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_editview_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1659
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1660
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1661
    return-void
.end method

.method static synthetic E(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->O:Ljava/lang/String;

    return-object v0
.end method

.method private E()V
    .registers 4

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1666
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_editview_wrong"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1667
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1668
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1669
    return-void
.end method

.method static synthetic F(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->P:Ljava/lang/String;

    return-object v0
.end method

.method private F()V
    .registers 5

    .prologue
    .line 1751
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->N:Lcom/duoku/a/a/a/a/a;

    if-nez v0, :cond_5

    .line 1762
    :goto_4
    return-void

    .line 1755
    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->N:Lcom/duoku/a/a/a/a/a;

    iget v1, p0, Lcom/duoku/platform/view/user/a;->R:I

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->S:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/duoku/a/a/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    .line 1756
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_4

    .line 1758
    :catch_2e
    move-exception v0

    .line 1760
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic G(Lcom/duoku/platform/view/user/a;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->I:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic H(Lcom/duoku/platform/view/user/a;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->D:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic I(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic K(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/a;D)V
    .registers 4

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/duoku/platform/view/user/a;->bm:D

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/a;Lcom/duoku/a/a/a/a/a;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->N:Lcom/duoku/a/a/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->J:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/a;Z)V
    .registers 2

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/a;)Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/a;->aZ:Z

    return v0
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/a;)I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/duoku/platform/view/user/a;->ag:I

    return v0
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->K:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aR:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->L:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1618
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1619
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_14

    .line 1621
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_15

    .line 1634
    :cond_14
    return-object v1

    .line 1623
    :cond_15
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1624
    const/4 v3, 0x3

    if-lt v0, v3, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    if-le v0, v3, :cond_38

    .line 1626
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1621
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1630
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35
.end method

.method static synthetic d(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->M:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/view/user/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bj:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->O:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aC:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->B:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/duoku/platform/view/user/a;)V
    .registers 1

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->y()V

    return-void
.end method

.method static synthetic g(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->Q:Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lcom/duoku/platform/view/user/a;)D
    .registers 3

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/duoku/platform/view/user/a;->bm:D

    return-wide v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->T:Ljava/lang/String;

    return-void
.end method

.method static synthetic i(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aG:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->P:Ljava/lang/String;

    return-void
.end method

.method static synthetic j(Lcom/duoku/platform/view/user/a;)V
    .registers 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/duoku/platform/view/user/a;->c()V

    return-void
.end method

.method static synthetic k(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ai:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aj:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic p(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aQ:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aT:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic s(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aU:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic t(Lcom/duoku/platform/view/user/a;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aV:Landroid/widget/EditText;

    return-object v0
.end method

.method private u()V
    .registers 5

    .prologue
    .line 403
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 404
    const-string v1, "com.duoku.game.helper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "com.duoku.game.helper.ex.uservice.IDKUserService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    new-instance v1, Lcom/duoku/platform/view/user/a$b;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$b;-><init>(Lcom/duoku/platform/view/user/a;)V

    iput-object v1, p0, Lcom/duoku/platform/view/user/a;->b:Lcom/duoku/platform/view/user/a$b;

    .line 407
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->b:Lcom/duoku/platform/view/user/a$b;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 408
    return-void
.end method

.method static synthetic u(Lcom/duoku/platform/view/user/a;)V
    .registers 1

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->z()V

    return-void
.end method

.method static synthetic v(Lcom/duoku/platform/view/user/a;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->be:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private v()V
    .registers 3

    .prologue
    .line 429
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 430
    if-nez v0, :cond_13

    .line 438
    :goto_12
    return-void

    .line 434
    :cond_13
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->z:Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Lcom/duoku/platform/view/user/a;->n()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/view/user/a;->ag:I

    .line 436
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->w()V

    goto :goto_12
.end method

.method static synthetic w(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method private w()V
    .registers 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "servicephonenum"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->e(Ljava/lang/String;)V

    .line 485
    const-string v0, ""

    invoke-virtual {p0}, Lcom/duoku/platform/view/user/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 487
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_customer_service_number"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->e(Ljava/lang/String;)V

    .line 489
    :cond_2c
    return-void
.end method

.method static synthetic x(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method private x()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 493
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->v()V

    .line 494
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_head"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bf:Landroid/widget/LinearLayout;

    .line 495
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bf:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_tv_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    .line 496
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    const-string v1, "dk_account_manager_title_text"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bf:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_payment_iv_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ap:Landroid/widget/ImageView;

    .line 498
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ap:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_account_user_shodow"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bb:Landroid/view/View;

    .line 500
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_layout_progress_account"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bc:Landroid/view/View;

    .line 501
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_scrollview"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->r:Landroid/widget/ScrollView;

    .line 503
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_layout_net_error_account"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->be:Landroid/widget/LinearLayout;

    .line 504
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_btn_history_retry_account"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 505
    new-instance v1, Lcom/duoku/platform/view/user/a$4;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$4;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->y()V

    .line 516
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_account_kubi_balance"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aG:Landroid/widget/TextView;

    .line 518
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/view/user/a$6;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/user/a$6;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    .line 554
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aG:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->bn:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bf:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_iv_payment_back"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 556
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->bf:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_layout_payment_back"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 560
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_tv_account_title"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/duoku/platform/view/user/a;->U:Landroid/widget/TextView;

    .line 561
    iget v1, p0, Lcom/duoku/platform/view/user/a;->ag:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_747

    .line 565
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->U:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u591a\u9177"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "dk_account_with_colon"

    invoke-virtual {p0, v4}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :cond_115
    :goto_115
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->ap:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    const-string v1, "dk_bind_phone_get_verify_code_account_manager_modify_phone"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/duoku/platform/view/user/a;->aR:Landroid/widget/Button;

    .line 582
    const-string v1, "dk_bind_phone_91_get_verify_code_account_manager_modify_phone"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/duoku/platform/view/user/a;->aC:Landroid/widget/Button;

    .line 583
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->aR:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    new-instance v1, Lcom/duoku/platform/view/user/a$7;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$7;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    new-instance v0, Lcom/duoku/platform/view/user/a$8;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/a$8;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    .line 607
    new-instance v0, Lcom/duoku/platform/view/user/a$9;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/a$9;-><init>(Lcom/duoku/platform/view/user/a;)V

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->q:Landroid/view/View$OnClickListener;

    .line 618
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_customer_version"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->u:Landroid/widget/LinearLayout;

    .line 619
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-nez v0, :cond_789

    .line 623
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_custom_bottom"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->t:Landroid/widget/LinearLayout;

    .line 625
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_customer_version_tv"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->v:Landroid/widget/TextView;

    .line 626
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_customer_service"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bd:Landroid/widget/TextView;

    .line 628
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bd:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/duoku/platform/view/user/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    :goto_1c9
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_account_kubi_balance"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aG:Landroid/widget/TextView;

    .line 643
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_tv_bind_account"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ao:Landroid/widget/TextView;

    .line 645
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "bd_ll_prize"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 646
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_tr_pointmall"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 648
    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_user_recharge"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 650
    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_tr_point"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 652
    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_user_numberbox"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 654
    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_tr_mytools"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 656
    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_completeuserinfo"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 658
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_vip_introduce"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 660
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_account_pic"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/user/CircleImage;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->C:Lcom/duoku/platform/view/user/CircleImage;

    .line 663
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_tv_level_title"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->E:Landroid/widget/TextView;

    .line 664
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_level_level_manager"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->F:Landroid/widget/TextView;

    .line 665
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_account_toast"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->x:Landroid/widget/LinearLayout;

    .line 666
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_account_toast_text"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->y:Landroid/widget/TextView;

    .line 667
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 668
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->y:Landroid/widget/TextView;

    new-instance v1, Lcom/duoku/platform/view/user/a$10;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$10;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_point_point_manager"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->G:Landroid/widget/TextView;

    .line 679
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "bd_tv_prize"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->H:Landroid/widget/TextView;

    .line 680
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "bd_iv_prize"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->D:Landroid/widget/ImageView;

    .line 681
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_iamgeview_rotate"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->I:Landroid/view/animation/Animation;

    .line 682
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 683
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->I:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 685
    const-string v0, "dk_tr_modify_pass"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aq:Landroid/widget/TableRow;

    .line 686
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aq:Landroid/widget/TableRow;

    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    const-string v0, "dk_tr_bind_account"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ar:Landroid/widget/TableRow;

    .line 689
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ar:Landroid/widget/TableRow;

    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    const-string v0, "dk_tr_change_account"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->as:Landroid/widget/TableRow;

    .line 692
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->as:Landroid/widget/TableRow;

    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    const-string v0, "dk_get_old_91_verify"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bh:Landroid/widget/LinearLayout;

    .line 695
    const-string v0, "dk_get_old_duoku_verify"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bi:Landroid/widget/LinearLayout;

    .line 697
    const-string v0, "dk_user_notify"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aO:Landroid/widget/TableRow;

    .line 698
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aO:Landroid/widget/TableRow;

    invoke-virtual {v0, p0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    const-string v0, "dk_account_info_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    .line 701
    const-string v0, "dk_bind_phone_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->at:Landroid/widget/LinearLayout;

    .line 702
    const-string v0, "dk_check_pre_phone"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->au:Landroid/widget/LinearLayout;

    .line 703
    const-string v0, "dk_modify_pwd_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aw:Landroid/widget/LinearLayout;

    .line 704
    const-string v0, "dk_modify_bind_phone_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->av:Landroid/widget/LinearLayout;

    .line 706
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/String;

    const-string v2, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->at:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/String;

    const-string v2, "\u7ed1\u5b9a\u624b\u673a"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->au:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/String;

    const-string v2, "\u6838\u5b9e\u7ed1\u5b9a\u624b\u673a"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->av:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/String;

    const-string v2, "\u4fee\u6539\u7ed1\u5b9a\u624b\u673a"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aw:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/String;

    const-string v2, "\u4fee\u6539\u5bc6\u7801"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 712
    const-string v0, "dk_user_identify"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ax:Landroid/widget/LinearLayout;

    .line 713
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ax:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/String;

    const-string v2, "\u5b9e\u540d\u8ba4\u8bc1"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 714
    const-string v0, "dk_identify_notify"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ay:Landroid/widget/TextView;

    .line 715
    const-string v0, "dk_identify_name"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    .line 716
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 717
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$11;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$11;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 730
    const-string v0, "dk_identify_number"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    .line 731
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 732
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$13;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$13;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 745
    const-string v0, "dk_identify_confirm"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aB:Landroid/widget/Button;

    .line 746
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aB:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    const-string v0, "dk_bind_phone_notice"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bg:Landroid/widget/TextView;

    .line 750
    const-string v0, "dk_layout_recharge_history_all"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    .line 751
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/String;

    const-string v2, "dk_tv_string_tools"

    invoke-virtual {p0, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 754
    const-string v0, "bd_ll_introduceview"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->n:Landroid/widget/LinearLayout;

    .line 757
    const-string v0, "dk_ll_toolsdetail"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    .line 758
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    const-string v1, "dk_ll_numberbox"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->o:Landroid/widget/LinearLayout;

    .line 759
    const-string v0, "bd_ll_upgradeview"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->p:Landroid/widget/RelativeLayout;

    .line 760
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->p:Landroid/widget/RelativeLayout;

    const-string v1, "\u8d26\u53f7\u5347\u7ea7"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 763
    const-string v0, "rl_userinfo_land"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    .line 767
    const-string v0, "dk_account_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->am:Landroid/widget/TextView;

    .line 768
    const-string v0, "dk_account_pic"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/user/CircleImage;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->C:Lcom/duoku/platform/view/user/CircleImage;

    .line 769
    const-string v0, "dk_tv_level_title"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->E:Landroid/widget/TextView;

    .line 770
    const-string v0, "dk_point_point_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->G:Landroid/widget/TextView;

    .line 771
    const-string v0, "dk_tv_tip_bind_account"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->an:Landroid/widget/TextView;

    .line 772
    const-string v0, "dk_phone_edit_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ai:Landroid/widget/EditText;

    .line 773
    const-string v0, "dk_verify_bind_phone_edit_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aj:Landroid/widget/EditText;

    .line 775
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ai:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 776
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ai:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$12;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$12;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 786
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aj:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 787
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aj:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$14;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$14;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 797
    const-string v0, "dk_bind_phone_get_verify_code_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->ak:Landroid/widget/Button;

    .line 798
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ak:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    const-string v0, "dk_btn_commit_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->al:Landroid/widget/Button;

    .line 801
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->al:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    const-string v0, "dk_account_manager_pre_pwd"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    .line 805
    const-string v0, "dk_account_manager_new_pwd"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    .line 806
    const-string v0, "dk_account_manager_check_new_pwd"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    .line 808
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 809
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$15;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$15;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 822
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 823
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$16;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$16;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 836
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 837
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$17;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$17;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 850
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_btn_commit_modify_pwd"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aK:Landroid/widget/Button;

    .line 851
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_modify_phone_pre_phone"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aP:Landroid/widget/TextView;

    .line 854
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_account_manager_pre_pwd"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aQ:Landroid/widget/EditText;

    .line 856
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aQ:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 858
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aQ:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$18;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$18;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 871
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_bind_phone_get_verify_code_account_manager_modify_phone"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aW:Landroid/widget/Button;

    .line 872
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aW:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_btn_next_step_account_manager_modify_phone"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aS:Landroid/widget/Button;

    .line 875
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aS:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_pre_verifycode_account_manager"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aT:Landroid/widget/EditText;

    .line 878
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aT:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 879
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aT:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$19;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$19;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 893
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_phone_edit_account_manager_mofidy_phone_1"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aU:Landroid/widget/EditText;

    .line 894
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aU:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 895
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aU:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$20;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$20;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 908
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_bind_phone_get_verify_code_account_manager_modify_phone_1"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aW:Landroid/widget/Button;

    .line 909
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aW:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_btn_next_step_account_manager_modify_phone_1"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aX:Landroid/widget/Button;

    .line 911
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aX:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_new_verifycode_account_manager"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aV:Landroid/widget/EditText;

    .line 914
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aV:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 915
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aV:Landroid/widget/EditText;

    new-instance v1, Lcom/duoku/platform/view/user/a$2;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/a$2;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 927
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->A()V

    .line 928
    return-void

    .line 567
    :cond_747
    iget v1, p0, Lcom/duoku/platform/view/user/a;->ag:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_768

    .line 571
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->U:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "91"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "dk_account_with_colon"

    invoke-virtual {p0, v4}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_115

    .line 573
    :cond_768
    iget v1, p0, Lcom/duoku/platform/view/user/a;->ag:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_115

    .line 577
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->U:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u767e\u5ea6"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "dk_account_with_colon"

    invoke-virtual {p0, v4}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_115

    .line 634
    :cond_789
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_custom_bottom"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->t:Landroid/widget/LinearLayout;

    .line 636
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_customer_version_tv"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->v:Landroid/widget/TextView;

    .line 637
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_customer_service"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bd:Landroid/widget/TextView;

    .line 639
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bd:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/duoku/platform/view/user/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1c9
.end method

.method static synthetic y(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->G:Landroid/widget/TextView;

    return-object v0
.end method

.method private y()V
    .registers 7

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 932
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bc:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 935
    const-string v0, ""

    .line 939
    iget v1, p0, Lcom/duoku/platform/view/user/a;->ag:I

    if-ne v1, v3, :cond_3a

    .line 941
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->af:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 954
    :goto_29
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_ACCOUNT_REMAIN_KUBI:Ljava/lang/String;

    const/16 v3, 0x67

    new-instance v4, Lcom/duoku/platform/view/user/a$3;

    invoke-direct {v4, p0}, Lcom/duoku/platform/view/user/a$3;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 1036
    return-void

    .line 943
    :cond_3a
    iget v1, p0, Lcom/duoku/platform/view/user/a;->ag:I

    if-ne v1, v4, :cond_4d

    .line 945
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->af:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 947
    :cond_4d
    iget v1, p0, Lcom/duoku/platform/view/user/a;->ag:I

    if-ne v1, v5, :cond_60

    .line 949
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->af:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v2}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 951
    :cond_60
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 952
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_29
.end method

.method static synthetic z(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->K:Ljava/lang/String;

    return-object v0
.end method

.method private z()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1040
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bc:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 1150
    sget-object v0, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->d:Lcom/duoku/platform/c/c;

    .line 1151
    return-void
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1139
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 383
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->u()V

    .line 385
    new-instance v0, Lcom/duoku/platform/e/a;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bl:Lcom/duoku/platform/e/a;

    .line 389
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 391
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_account_manager"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->e:Landroid/view/ViewGroup;

    .line 398
    :goto_29
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->x()V

    .line 399
    return-void

    .line 395
    :cond_2d
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_account_manager_landscape"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->e:Landroid/view/ViewGroup;

    goto :goto_29
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 1156
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 1674
    invoke-super {p0}, Lcom/duoku/platform/view/b;->d()V

    .line 1675
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->b:Lcom/duoku/platform/view/user/a$b;

    if-eqz v0, :cond_11

    .line 1677
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->b:Lcom/duoku/platform/view/user/a$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->b:Lcom/duoku/platform/view/user/a$b;

    .line 1680
    :cond_11
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/a;->w:Z

    if-nez v0, :cond_1d

    .line 1682
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 1685
    :cond_1d
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/duoku/platform/view/user/a;->ae:Ljava/lang/String;

    .line 1715
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    .line 361
    invoke-super {p0}, Lcom/duoku/platform/view/b;->h()V

    .line 362
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/c;->a(Landroid/content/Context;)V

    .line 363
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 367
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 369
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->an:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_btn_string_modify_phone"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->ao:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_3f
    return-void

    .line 375
    :cond_40
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->an:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_tv_string_account_no_bind"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 376
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ao:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_btn_string_bind_phone"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3f
.end method

.method public n()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 447
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 449
    if-nez v2, :cond_16

    move v0, v1

    .line 479
    :cond_15
    :goto_15
    return v0

    .line 453
    :cond_16
    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v3

    .line 454
    if-nez v3, :cond_1e

    move v0, v1

    .line 456
    goto :goto_15

    .line 459
    :cond_1e
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v1, :cond_3d

    .line 461
    const/4 v1, 0x3

    .line 462
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v3

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 464
    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-nez v2, :cond_15

    :cond_3b
    move v0, v1

    goto :goto_15

    .line 470
    :cond_3d
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v1, :cond_43

    .line 472
    const/4 v0, 0x2

    .line 473
    goto :goto_15

    .line 474
    :cond_43
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v3, v1, :cond_15

    .line 476
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public o()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 1085
    const-string v0, "mViewStack"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_39

    .line 1089
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "lv_tooldetail"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    :cond_39
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v6, :cond_ac

    .line 1094
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_ll_point"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_point_message_list"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_ll_point"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_ll_numberbox"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_list_mynumberbox"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_ll_numberbox"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1104
    :cond_ac
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v6, :cond_c8

    .line 1106
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1113
    :cond_c8
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v4, :cond_e0

    .line 1116
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 1133
    :cond_df
    return-void

    .line 1118
    :cond_e0
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v4, :cond_df

    .line 1120
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1121
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1123
    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    :goto_114
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_df

    .line 1128
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_114
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1162
    const-string v0, "dk_tr_bind_account"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_ac

    .line 1164
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v3, "15"

    invoke-virtual {v0, v3}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v4, "cp_account_bind_phonenumber"

    invoke-virtual {v0, v3, v4}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1168
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/k;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1170
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/k;->j(Landroid/content/Context;)Z

    .line 1321
    :cond_46
    :goto_46
    const-string v0, "tv_kf_call_01_account_manager"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_76

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "tv_kf_call_02_account_manager"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_76

    .line 1322
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "tv_kf_call_03_account_manager"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_76

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "tv_kf_call_04_account_manager"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_76

    .line 1323
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "tv_kf_call_05_account_manager"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_316

    .line 1325
    :cond_76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1326
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1613
    :cond_9b
    :goto_9b
    return-void

    .line 1174
    :cond_9c
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/k;->k(Landroid/content/Context;)Z

    goto :goto_46

    .line 1177
    :cond_ac
    const-string v0, "dk_tr_modify_pass"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_d9

    .line 1179
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v3, "14"

    invoke-virtual {v0, v3}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1181
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v4, "cp_account_modify_password"

    invoke-virtual {v0, v3, v4}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1182
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/k;->h(Landroid/content/Context;)Z

    goto/16 :goto_46

    .line 1184
    :cond_d9
    const-string v0, "dk_payment_iv_close"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_f2

    .line 1186
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    goto/16 :goto_46

    .line 1188
    :cond_f2
    const-string v0, "dk_tr_change_account"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_12a

    .line 1190
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v3, "16"

    invoke-virtual {v0, v3}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1192
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v4, "cp_account_change_accountid"

    invoke-virtual {v0, v3, v4}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1196
    const/4 v0, 0x1

    :try_start_10f
    iput-boolean v0, p0, Lcom/duoku/platform/view/user/a;->w:Z

    .line 1197
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_116} :catch_125

    .line 1204
    :goto_116
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/16 v3, 0x7d5

    invoke-virtual {v0, v3, v7, v7, v7}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onSuspendWindowChangeUser(Ljava/lang/String;)V

    goto/16 :goto_46

    .line 1199
    :catch_125
    move-exception v0

    .line 1201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_116

    .line 1208
    :cond_12a
    const-string v0, "dk_btn_commit_modify_pwd"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_2cc

    .line 1211
    invoke-static {}, Lcom/duoku/platform/util/d;->a()Lcom/duoku/platform/util/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/util/d;->b()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1215
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_account_manager_pre_pwd"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aQ:Landroid/widget/EditText;

    .line 1217
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aQ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aL:Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aM:Ljava/lang/String;

    .line 1219
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aN:Ljava/lang/String;

    .line 1221
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aL:Ljava/lang/String;

    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19a

    .line 1223
    :cond_17c
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_pre_pwd_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->C()V

    .line 1225
    iput-boolean v5, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    goto/16 :goto_9b

    .line 1229
    :cond_19a
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aM:Ljava/lang/String;

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c4

    .line 1231
    :cond_1a6
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_new_pwd_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1232
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->D()V

    .line 1233
    iput-boolean v5, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    goto/16 :goto_9b

    .line 1237
    :cond_1c4
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aN:Ljava/lang/String;

    if-eqz v0, :cond_1d0

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aN:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1ee

    .line 1239
    :cond_1d0
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_check_pwd_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->E()V

    .line 1241
    iput-boolean v5, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    goto/16 :goto_9b

    .line 1247
    :cond_1ee
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_214

    .line 1249
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_pre_pwd_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1250
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->C()V

    .line 1251
    iput-boolean v5, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    goto/16 :goto_9b

    .line 1256
    :cond_214
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aH:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v4, "dk_edittext_selector"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1259
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_247

    .line 1261
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_new_pwd_rule_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->D()V

    .line 1263
    iput-boolean v5, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    goto/16 :goto_9b

    .line 1268
    :cond_247
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v4, "dk_edittext_selector"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1271
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aM:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->aL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27a

    .line 1273
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "\u65b0\u5bc6\u7801\u4e0e\u539f\u5bc6\u7801\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165!"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aI:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->D()V

    .line 1277
    iput-boolean v5, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    goto/16 :goto_9b

    .line 1283
    :cond_27a
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aM:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->aN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a2

    .line 1285
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_new_pwd_check_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1286
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->E()V

    .line 1287
    iput-boolean v5, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    goto/16 :goto_9b

    .line 1292
    :cond_2a2
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aJ:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v4, "dk_edittext_selector"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1295
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    if-eqz v0, :cond_2c8

    .line 1297
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_str_tip_modify_pass"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 1301
    :cond_2c8
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/a;->ah:Z

    goto/16 :goto_46

    .line 1303
    :cond_2cc
    const-string v0, "dk_bind_phone_get_verify_code_account_manager_modify_phone"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_46

    .line 1306
    iget v0, p0, Lcom/duoku/platform/view/user/a;->ag:I

    if-ne v0, v1, :cond_2fe

    .line 1308
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aR:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1309
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aR:Landroid/widget/Button;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v4, "dk_btn_small_01_dis"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1317
    :cond_2ea
    :goto_2ea
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/a;->aZ:Z

    .line 1318
    new-instance v0, Lcom/duoku/platform/view/user/a$a;

    const/16 v3, 0x3c

    invoke-direct {v0, p0, v3}, Lcom/duoku/platform/view/user/a$a;-><init>(Lcom/duoku/platform/view/user/a;I)V

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->bk:Ljava/lang/Runnable;

    .line 1319
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->bj:Landroid/os/Handler;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->bk:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_46

    .line 1311
    :cond_2fe
    iget v0, p0, Lcom/duoku/platform/view/user/a;->ag:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2ea

    .line 1313
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aC:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1314
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aC:Landroid/widget/Button;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v4, "dk_btn_small_01_dis"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2ea

    .line 1328
    :cond_316
    const-string v0, "dk_user_recharge"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_343

    .line 1330
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "13"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "cp_account_recharge_history"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->m(Landroid/content/Context;)Z

    goto/16 :goto_9b

    .line 1336
    :cond_343
    const-string v0, "bd_ll_prize"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_478

    .line 1339
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v2, "12"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "cp_draw_statistic"

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1343
    invoke-static {}, Lcom/duoku/platform/util/g;->a()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1348
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 1349
    if-eqz v0, :cond_9b

    .line 1351
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v2

    sget-object v3, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v2, v3, :cond_38a

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-nez v2, :cond_38a

    .line 1353
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    goto/16 :goto_9b

    .line 1355
    :cond_38a
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v2

    sget-object v3, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v2, v3, :cond_3ad

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a4

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ad

    .line 1358
    :cond_3a4
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/a;->w:Z

    .line 1359
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto/16 :goto_9b

    .line 1361
    :cond_3ad
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "com.duoku.game.helper"

    sget-object v3, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f6

    .line 1363
    invoke-static {}, Lcom/duoku/platform/util/f;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3d0

    .line 1365
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_toast_down_text"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 1368
    :cond_3d0
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 1369
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    const-string v1, "dk_dialog_install_content_msg"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/view/user/a;->c:Ljava/lang/String;

    sget-object v3, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/ui/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 1373
    :cond_3f6
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->O:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42b

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->P:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42b

    .line 1377
    iput v1, p0, Lcom/duoku/platform/view/user/a;->R:I

    .line 1378
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->Q:Ljava/lang/String;

    const-string v3, ""

    const-string v4, "\u6bcf\u65e5\u62bd\u5956"

    iget-object v5, p0, Lcom/duoku/platform/view/user/a;->T:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->S:Ljava/lang/String;

    .line 1379
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->F()V

    goto/16 :goto_9b

    .line 1382
    :cond_42b
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->O:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44c

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->P:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44c

    .line 1386
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "\u60a8\u4eca\u5929\u5df2\u7ecf\u62bd\u8fc7\u5956\u4e86\uff01"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9b

    .line 1389
    :cond_44c
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->O:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1393
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 1394
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    const-string v1, "dk_tv_string_prized_content"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Lcom/duoku/platform/view/user/a;)V

    goto/16 :goto_9b

    .line 1400
    :cond_478
    const-string v0, "dk_tr_pointmall"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_548

    .line 1402
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v2, "17"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1404
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "cp_integral_shop_statistic"

    invoke-virtual {v0, v2, v3}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1406
    invoke-static {}, Lcom/duoku/platform/util/g;->a()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1411
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 1413
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_9b

    .line 1416
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v2

    sget-object v3, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v2, v3, :cond_4c9

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-nez v2, :cond_4c9

    .line 1418
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    goto/16 :goto_9b

    .line 1420
    :cond_4c9
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v2

    sget-object v3, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v2, v3, :cond_4ec

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e3

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ec

    .line 1423
    :cond_4e3
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/a;->w:Z

    .line 1424
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto/16 :goto_9b

    .line 1426
    :cond_4ec
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "com.duoku.game.helper"

    sget-object v2, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_535

    .line 1428
    invoke-static {}, Lcom/duoku/platform/util/f;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_50f

    .line 1430
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_toast_down_text"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 1433
    :cond_50f
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 1434
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    const-string v1, "dk_dialog_install_content_msg"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/view/user/a;->c:Ljava/lang/String;

    sget-object v3, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/ui/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 1439
    :cond_535
    const/16 v0, 0x10

    iput v0, p0, Lcom/duoku/platform/view/user/a;->R:I

    .line 1440
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->S:Ljava/lang/String;

    .line 1441
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->F()V

    goto/16 :goto_9b

    .line 1446
    :cond_548
    const-string v0, "dk_tr_point"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_55e

    .line 1449
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1450
    new-instance v0, Lcom/duoku/platform/view/user/e;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/view/user/e;-><init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;)V

    goto/16 :goto_9b

    .line 1452
    :cond_55e
    const-string v0, "dk_user_numberbox"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_58f

    .line 1454
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "18"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1456
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "cp_number_storage_statistic"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1459
    new-instance v0, Lcom/duoku/platform/view/user/b;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/user/a;->N:Lcom/duoku/a/a/a/a/a;

    const-string v4, ""

    iget-object v5, p0, Lcom/duoku/platform/view/user/a;->J:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/view/user/b;-><init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;Lcom/duoku/a/a/a/a/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 1461
    :cond_58f
    const-string v0, "dk_tr_mytools"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_5bd

    .line 1463
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1465
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "cp_tools_statistic"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1468
    new-instance v0, Lcom/duoku/platform/view/user/d;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->N:Lcom/duoku/a/a/a/a/a;

    const-string v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/duoku/platform/view/user/d;-><init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;Lcom/duoku/a/a/a/a/a;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 1470
    :cond_5bd
    const-string v0, "dk_completeuserinfo"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-eq v2, v0, :cond_9b

    .line 1477
    const-string v0, "dk_vip_introduce"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_5db

    .line 1480
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1481
    new-instance v0, Lcom/duoku/platform/view/user/f;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/duoku/platform/view/user/f;-><init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;I)V

    goto/16 :goto_9b

    .line 1483
    :cond_5db
    const-string v0, "dk_user_notify"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_6da

    .line 1485
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "14"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 1487
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "cp_account_modify_password"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->av:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->au:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1494
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1495
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aw:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1496
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ax:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1497
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->ax:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ax:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1500
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->B()V

    .line 1502
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/a;->aD:Z

    if-eqz v0, :cond_68f

    .line 1504
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_644

    .line 1506
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1508
    :cond_644
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "@drawable/dk_editview_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1509
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    .line 1510
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_identify_get"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->aE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1513
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1515
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aB:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9b

    .line 1519
    :cond_68f
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v3, "dk_identify_inter"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aB:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1521
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1523
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1524
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v2, "dk_edittext_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1527
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_9b

    .line 1531
    :cond_6da
    const-string v0, "dk_identify_confirm"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/user/a;->c(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_9b

    .line 1533
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aE:Ljava/lang/String;

    .line 1534
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    .line 1537
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_716

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aE:Ljava/lang/String;

    const-string v1, "^[\u4e00-\u9fa5]{2,5}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_724

    .line 1539
    :cond_716
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u771f\u5b9e\u59d3\u540d"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->az:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_9b

    .line 1544
    :cond_724
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_740

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    const-string v1, "[0-9]{17}[0-9xX]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_740

    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74e

    .line 1546
    :cond_740
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u771f\u5b9e\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->aA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_9b

    .line 1551
    :cond_74e
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_761

    .line 1553
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->f:Landroid/content/Context;

    const-string v1, "dk_phone_send_msg_noNetwork"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 1557
    :cond_761
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a;->aE:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a;->aF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/f/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_IDENTIFY_URL:Ljava/lang/String;

    const/16 v3, 0x2f

    new-instance v4, Lcom/duoku/platform/view/user/a$5;

    invoke-direct {v4, p0}, Lcom/duoku/platform/view/user/a$5;-><init>(Lcom/duoku/platform/view/user/a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    goto/16 :goto_9b
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ae:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->V:Ljava/lang/String;

    return-object v0
.end method

.method public r()V
    .registers 2

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->N:Lcom/duoku/a/a/a/a/a;

    if-nez v0, :cond_7

    .line 1771
    invoke-direct {p0}, Lcom/duoku/platform/view/user/a;->u()V

    .line 1773
    :cond_7
    return-void
.end method

.method public s()Lcom/duoku/a/a/a/a/a;
    .registers 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->N:Lcom/duoku/a/a/a/a/a;

    return-object v0
.end method

.method public t()V
    .registers 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ap:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 1799
    iget-object v0, p0, Lcom/duoku/platform/view/user/a;->ap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 1801
    :cond_9
    return-void
.end method
