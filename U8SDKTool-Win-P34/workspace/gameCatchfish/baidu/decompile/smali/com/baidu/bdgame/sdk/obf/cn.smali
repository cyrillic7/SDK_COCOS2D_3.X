.class public Lcom/baidu/bdgame/sdk/obf/cn;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/cn$b;,
        Lcom/baidu/bdgame/sdk/obf/cn$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x270e

.field public static final b:I = 0x270f

.field public static final c:I = 0x2710

.field public static final d:I = 0x2711


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/ce;

.field private i:I

.field private j:Lcom/baidu/bdgame/sdk/obf/jd;

.field private k:Lcom/baidu/bdgame/sdk/obf/je;

.field private l:Lcom/baidu/bdgame/sdk/obf/iy;

.field private m:Lcom/baidu/bdgame/sdk/obf/iy;

.field private n:Lcom/baidu/bdgame/sdk/obf/jg;

.field private o:Lcom/baidu/bdgame/sdk/obf/iw;

.field private p:Z

.field private q:Lcom/baidu/bdgame/sdk/obf/el;

.field private r:Lcom/baidu/bdgame/sdk/obf/cs;

.field private s:Lcom/baidu/bdgame/sdk/obf/de;

.field private t:Lcom/baidu/bdgame/sdk/obf/cw;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/cn$a;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Lcom/baidu/bdgame/sdk/obf/ez;

.field private x:Ljava/lang/String;

.field private y:Lcom/baidu/bdgame/sdk/obf/cn$b;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->i:I

    .line 75
    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->p:Z

    .line 586
    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->v:Z

    .line 89
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->h:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 90
    return-void
.end method

.method private U()J
    .registers 5

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->E()Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v0

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->V()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private V()J
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private W()V
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    if-eqz v0, :cond_9

    .line 600
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->dismiss()V

    .line 602
    :cond_9
    return-void
.end method

.method private X()V
    .registers 4

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cn$3;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/cn$3;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    .line 660
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cn;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cn;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cn;Z)Z
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cn;)Lcom/baidu/bdgame/sdk/obf/cn$b;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->y:Lcom/baidu/bdgame/sdk/obf/cn$b;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cn;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->x:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->N()V

    .line 669
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->l()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cn$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cn$4;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    invoke-static {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 698
    if-nez v0, :cond_1c

    .line 699
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->O()V

    .line 701
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 703
    :cond_1c
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/cn;)Lcom/baidu/bdgame/sdk/obf/ez;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->W()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 3

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->U()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .registers 5

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_baidubean_exchange_ratio_unit"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()J
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->o:Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v0

    return-wide v0
.end method

.method public E()Lcom/baidu/bdgame/sdk/obf/iw;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->o:Lcom/baidu/bdgame/sdk/obf/iw;

    return-object v0
.end method

.method public F()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 451
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->i:I

    if-eq v1, v0, :cond_f

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->i:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->i:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    .line 458
    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public G()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 464
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->i:I

    packed-switch v1, :pswitch_data_8

    .line 472
    :pswitch_6
    const/4 v0, 0x1

    :pswitch_7
    return v0

    .line 464
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public H()Z
    .registers 3

    .prologue
    .line 478
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public I()Z
    .registers 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->p:Z

    return v0
.end method

.method public J()Lcom/baidu/bdgame/sdk/obf/je;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->k:Lcom/baidu/bdgame/sdk/obf/je;

    return-object v0
.end method

.method public K()Lcom/baidu/bdgame/sdk/obf/iy;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->l:Lcom/baidu/bdgame/sdk/obf/iy;

    return-object v0
.end method

.method public L()Z
    .registers 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->v:Z

    return v0
.end method

.method public M()V
    .registers 5

    .prologue
    .line 605
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    if-nez v0, :cond_32

    .line 606
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ez;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    .line 607
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->l()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_paycenter_baidu_bean"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ez;->b(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cn$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cn$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ez;->a(Lcom/baidu/bdgame/sdk/obf/ev;)V

    .line 625
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cn$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cn$2;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ez;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 635
    :cond_32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->show()V

    .line 636
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->l()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_ok"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ez;->a(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 638
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->X()V

    .line 640
    :cond_59
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    .line 94
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-direct {v1, p1, p0}, Lcom/baidu/bdgame/sdk/obf/cm;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/cn;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->b(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "bdp_paycenter_layout_accountinfo_fix_landscape"

    :goto_15
    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->f(I)V

    .line 99
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_paycenter_paymode_layout_first"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->e(I)V

    .line 101
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->d(I)V

    .line 102
    return-object v1

    .line 96
    :cond_2e
    const-string v0, "bdp_paycenter_layout_accountinfo_nofix_landscape"

    goto :goto_15
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 542
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/it;->a()V

    .line 543
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->u:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 544
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/cn$a;

    .line 545
    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/cn$a;->a()V

    goto :goto_d

    .line 548
    :cond_1d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 549
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->w:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->a()I

    .line 551
    :cond_2e
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cn$a;)V
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->u:Ljava/util/List;

    if-nez v0, :cond_b

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->u:Ljava/util/List;

    .line 560
    :cond_b
    if-nez p1, :cond_e

    .line 564
    :goto_d
    return-void

    .line 563
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cn$b;)V
    .registers 2

    .prologue
    .line 754
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->y:Lcom/baidu/bdgame/sdk/obf/cn$b;

    .line 755
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 204
    :goto_a
    return-void

    .line 202
    :cond_b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->r:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    goto :goto_a
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 2

    .prologue
    .line 502
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->o:Lcom/baidu/bdgame/sdk/obf/iw;

    .line 504
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->m:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 340
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 2

    .prologue
    .line 507
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 508
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/je;)V
    .registers 2

    .prologue
    .line 511
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->k:Lcom/baidu/bdgame/sdk/obf/je;

    .line 512
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jg;)V
    .registers 2

    .prologue
    .line 527
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->n:Lcom/baidu/bdgame/sdk/obf/jg;

    .line 528
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 124
    if-eqz p1, :cond_34

    .line 125
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 126
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cs;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->h:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->r:Lcom/baidu/bdgame/sdk/obf/cs;

    .line 127
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/de;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/de;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->s:Lcom/baidu/bdgame/sdk/obf/de;

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->s:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/de;->a()V

    .line 130
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cw;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/cw;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->t:Lcom/baidu/bdgame/sdk/obf/cw;

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->t:Lcom/baidu/bdgame/sdk/obf/cw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cw;->c()V

    .line 139
    :goto_33
    return-void

    .line 134
    :cond_34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    if-eqz v0, :cond_3d

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/el;->c()V

    .line 137
    :cond_3d
    const/16 v0, 0x270e

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cn;->b(I)V

    goto :goto_33
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/dj;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 714
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->L()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 733
    :cond_7
    :goto_7
    return v0

    .line 716
    :cond_8
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->H()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 717
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cn$5;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/cn$5;-><init>(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/dj;)V

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/cn$b;)V

    .line 730
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->M()V

    .line 731
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    .line 107
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-direct {v1, p1, p0}, Lcom/baidu/bdgame/sdk/obf/cm;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/cn;)V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->b(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "bdp_paycenter_layout_accountinfo_fix"

    :goto_15
    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->f(I)V

    .line 112
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_paycenter_paymode_layout_first"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->e(I)V

    .line 114
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cm;->d(I)V

    .line 115
    return-object v1

    .line 109
    :cond_2e
    const-string v0, "bdp_paycenter_layout_accountinfo_nofix"

    goto :goto_15
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cn;->a(I)V

    .line 144
    return-void
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/cn$a;)V
    .registers 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->u:Ljava/util/List;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 572
    :cond_6
    :goto_6
    return-void

    .line 571
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 519
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->l:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 520
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->p:Z

    .line 495
    return-void
.end method

.method protected c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/it;->c()V

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    if-eqz v0, :cond_2b

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestory mPayFlowCenter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/el;->b()V

    .line 165
    iput-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    .line 175
    :cond_2b
    iput-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 176
    iput-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cn;->k:Lcom/baidu/bdgame/sdk/obf/je;

    .line 177
    iput-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cn;->l:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 178
    iput-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cn;->n:Lcom/baidu/bdgame/sdk/obf/jg;

    .line 179
    iput-object v3, p0, Lcom/baidu/bdgame/sdk/obf/cn;->o:Lcom/baidu/bdgame/sdk/obf/iw;

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->s:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/de;->k()V

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->t:Lcom/baidu/bdgame/sdk/obf/cw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cw;->d()V

    .line 185
    return-void
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 486
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/cn;->i:I

    .line 487
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->g()V

    .line 148
    return-void
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    if-nez v0, :cond_14

    .line 154
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/el;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/el;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/el;->a(Lcom/baidu/bdgame/sdk/obf/cn;)V

    .line 157
    :cond_14
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->s:Lcom/baidu/bdgame/sdk/obf/de;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/de;->a()V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->t:Lcom/baidu/bdgame/sdk/obf/cw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cw;->c()V

    .line 211
    return-void
.end method

.method public o()J
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->r:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    goto :goto_5
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->o:Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iw;->h()Z

    move-result v0

    return v0
.end method

.method public r()Lcom/baidu/bdgame/sdk/obf/de;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->s:Lcom/baidu/bdgame/sdk/obf/de;

    return-object v0
.end method

.method public s()Lcom/baidu/bdgame/sdk/obf/cs;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->r:Lcom/baidu/bdgame/sdk/obf/cs;

    return-object v0
.end method

.method public t()Lcom/baidu/bdgame/sdk/obf/cw;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->t:Lcom/baidu/bdgame/sdk/obf/cw;

    return-object v0
.end method

.method public u()Lcom/baidu/bdgame/sdk/obf/el;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->q:Lcom/baidu/bdgame/sdk/obf/el;

    return-object v0
.end method

.method public v()Lcom/baidu/bdgame/sdk/obf/iy;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->m:Lcom/baidu/bdgame/sdk/obf/iy;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->n:Lcom/baidu/bdgame/sdk/obf/jg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jg;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->o:Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .registers 3

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cn;->V()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
