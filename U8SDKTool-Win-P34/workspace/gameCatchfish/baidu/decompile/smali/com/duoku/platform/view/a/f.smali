.class public Lcom/duoku/platform/view/a/f;
.super Lcom/duoku/platform/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/a/f$a;,
        Lcom/duoku/platform/view/a/f$b;,
        Lcom/duoku/platform/view/a/f$c;,
        Lcom/duoku/platform/view/a/f$d;,
        Lcom/duoku/platform/view/a/f$e;,
        Lcom/duoku/platform/view/a/f$f;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/view/View;

.field private C:Z

.field private D:Z

.field private E:Landroid/widget/FrameLayout;

.field private F:I

.field private G:Landroid/widget/RelativeLayout;

.field private H:Z

.field private I:Landroid/widget/Button;

.field private J:Landroid/widget/Button;

.field private K:I

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:I

.field private O:Ljava/lang/String;

.field private P:Lcom/duoku/platform/view/a/f$d;

.field private Q:Lcom/duoku/a/a/a/a/a;

.field private R:I

.field private S:Ljava/lang/String;

.field private T:Z

.field private U:Z

.field private V:Landroid/webkit/WebView;

.field private W:Ljava/lang/String;

.field private X:Z

.field private Y:Landroid/view/View$OnClickListener;

.field private Z:Landroid/os/Handler;

.field private a:Lcom/duoku/platform/e/a;

.field private aa:Landroid/view/View$OnClickListener;

.field private ab:Landroid/widget/AdapterView$OnItemClickListener;

.field private ac:Landroid/widget/BaseAdapter;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/ListView;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/widget/RelativeLayout;

.field private x:I

.field private y:I

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a;-><init>(Landroid/content/Context;)V

    .line 78
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->u:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->v:Ljava/util/ArrayList;

    .line 85
    iput-boolean v1, p0, Lcom/duoku/platform/view/a/f;->C:Z

    .line 86
    iput-boolean v1, p0, Lcom/duoku/platform/view/a/f;->D:Z

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->O:Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/a/f;->X:Z

    .line 250
    new-instance v0, Lcom/duoku/platform/view/a/f$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/f$1;-><init>(Lcom/duoku/platform/view/a/f;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->Y:Landroid/view/View$OnClickListener;

    .line 435
    new-instance v0, Lcom/duoku/platform/view/a/f$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/f$2;-><init>(Lcom/duoku/platform/view/a/f;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->Z:Landroid/os/Handler;

    .line 455
    new-instance v0, Lcom/duoku/platform/view/a/f$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/f$3;-><init>(Lcom/duoku/platform/view/a/f;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->aa:Landroid/view/View$OnClickListener;

    .line 502
    new-instance v0, Lcom/duoku/platform/view/a/f$4;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/f$4;-><init>(Lcom/duoku/platform/view/a/f;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->ab:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1022
    new-instance v0, Lcom/duoku/platform/view/a/f$5;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/f$5;-><init>(Lcom/duoku/platform/view/a/f;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->ac:Landroid/widget/BaseAdapter;

    .line 130
    return-void
.end method

.method private a(ILcom/duoku/platform/view/a;Lcom/duoku/platform/ui/a/g;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    .line 743
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_1c

    .line 747
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 749
    invoke-direct {p0}, Lcom/duoku/platform/view/a/f;->r()V

    .line 808
    :cond_1c
    :goto_1c
    return-void

    .line 751
    :cond_1d
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v1, v2, :cond_2f

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 753
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    goto :goto_1c

    .line 755
    :cond_2f
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v2, :cond_51

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 758
    :cond_49
    iput-boolean v3, p0, Lcom/duoku/platform/view/a/f;->X:Z

    .line 759
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto :goto_1c

    .line 761
    :cond_51
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "com.duoku.game.helper"

    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->W:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 764
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 766
    const/4 v0, 0x6

    if-ne p1, v0, :cond_85

    .line 768
    const-string v0, "dk_dialog_install_content_draw"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    :goto_79
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->S:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/view/a/f;->W:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/duoku/platform/ui/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 772
    :cond_85
    const-string v0, "dk_dialog_install_content_msg"

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    .line 778
    :cond_8c
    packed-switch p1, :pswitch_data_100

    .line 795
    :goto_8f
    :pswitch_8f
    :try_start_8f
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->Q:Lcom/duoku/a/a/a/a/a;

    if-eqz v0, :cond_1c

    .line 799
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->Q:Lcom/duoku/a/a/a/a/a;

    iget v1, p0, Lcom/duoku/platform/view/a/f;->N:I

    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->O:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/duoku/a/a/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    .line 800
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
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_bb} :catch_bd

    goto/16 :goto_1c

    .line 802
    :catch_bd
    move-exception v0

    .line 804
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1c

    .line 781
    :pswitch_c3
    const/4 v0, 0x4

    iput v0, p0, Lcom/duoku/platform/view/a/f;->N:I

    .line 782
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {p3}, Lcom/duoku/platform/ui/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->O:Ljava/lang/String;

    goto :goto_8f

    .line 785
    :pswitch_d5
    const/4 v0, 0x2

    iput v0, p0, Lcom/duoku/platform/view/a/f;->N:I

    .line 786
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {p3}, Lcom/duoku/platform/ui/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->O:Ljava/lang/String;

    goto :goto_8f

    .line 789
    :pswitch_e7
    iput v3, p0, Lcom/duoku/platform/view/a/f;->N:I

    .line 790
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p3}, Lcom/duoku/platform/ui/a/g;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p3}, Lcom/duoku/platform/ui/a/g;->g()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->O:Ljava/lang/String;

    goto :goto_8f

    .line 778
    :pswitch_data_100
    .packed-switch 0x2
        :pswitch_c3
        :pswitch_d5
        :pswitch_8f
        :pswitch_8f
        :pswitch_e7
    .end packed-switch
.end method

.method private a(Lcom/duoku/platform/ui/a/g;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 532
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->j:Landroid/widget/TextView;

    const-string v1, "dk_message_content_title"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    const-string v0, ""

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 539
    :cond_45
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    :goto_4a
    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    const-string v0, ""

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 549
    :cond_5c
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    :goto_61
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/ui/a/g;)V

    .line 560
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->M:Ljava/lang/String;

    .line 563
    iput-boolean v6, p0, Lcom/duoku/platform/view/a/f;->s:Z

    .line 564
    iput-boolean v4, p0, Lcom/duoku/platform/view/a/f;->T:Z

    .line 565
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    return-void

    .line 543
    :cond_7e
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_message_content_source"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a

    .line 553
    :cond_a5
    new-instance v0, Lcom/duoku/platform/util/i;

    invoke-direct {v0}, Lcom/duoku/platform/util/i;-><init>()V

    .line 554
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 555
    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 556
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_61
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/f;)V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/duoku/platform/view/a/f;->q()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/f;I)V
    .registers 2

    .prologue
    .line 99
    iput p1, p0, Lcom/duoku/platform/view/a/f;->R:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/f;ILcom/duoku/platform/view/a;Lcom/duoku/platform/ui/a/g;)V
    .registers 4

    .prologue
    .line 740
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/view/a/f;->a(ILcom/duoku/platform/view/a;Lcom/duoku/platform/ui/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/f;Lcom/duoku/a/a/a/a/a;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/duoku/platform/view/a/f;->Q:Lcom/duoku/a/a/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V
    .registers 2

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/ui/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/f;Z)V
    .registers 2

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/duoku/platform/view/a/f;->H:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/f;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->w:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b(I)V
    .registers 4

    .prologue
    .line 1096
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.ACTION_MESSAGE_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    const-string v1, "unreadCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1098
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1099
    return-void
.end method

.method private b(Lcom/duoku/platform/ui/a/g;)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 588
    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->c()I

    move-result v0

    .line 589
    const-string v1, ""

    .line 590
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 591
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 592
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 593
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 594
    packed-switch v0, :pswitch_data_ca

    .line 648
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 649
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 652
    :goto_2b
    iput v0, p0, Lcom/duoku/platform/view/a/f;->K:I

    .line 654
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/view/a/f$a;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/view/a/f$a;-><init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    return-void

    .line 597
    :pswitch_38
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2b

    .line 600
    :pswitch_3e
    const-string v1, "dk_message_bt_gift"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 604
    :pswitch_4a
    const-string v1, "dk_message_bt_activity"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 608
    :pswitch_56
    const-string v1, "dk_message_bt_detail"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 612
    :pswitch_62
    const-string v1, "dk_message_bt_web"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 616
    :pswitch_6e
    const-string v1, "dk_message_bt_draw"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 620
    :pswitch_7a
    const-string v1, "dk_message_bt_download"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 626
    :pswitch_86
    const-string v1, "dk_message_bt_get"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 632
    :pswitch_92
    const-string v1, "dk_message_bt_got"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 634
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 635
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 636
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    .line 641
    :pswitch_ae
    const-string v1, "dk_message_bt_passed"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 643
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 644
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 645
    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    .line 594
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3e
        :pswitch_4a
        :pswitch_56
        :pswitch_62
        :pswitch_6e
        :pswitch_7a
        :pswitch_86
        :pswitch_92
        :pswitch_ae
        :pswitch_86
        :pswitch_92
        :pswitch_ae
        :pswitch_86
        :pswitch_92
        :pswitch_ae
    .end packed-switch
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/f;I)V
    .registers 2

    .prologue
    .line 88
    iput p1, p0, Lcom/duoku/platform/view/a/f;->F:I

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V
    .registers 2

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/ui/a/g;)V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/duoku/platform/view/a/f;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/f;Z)V
    .registers 2

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/duoku/platform/view/a/f;->D:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    .line 410
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->E:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_btn_message_retry"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 412
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->E:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v3, "dk_tv_network_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 413
    if-eqz p1, :cond_2c

    .line 415
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :cond_2c
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->E:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 420
    new-instance v1, Lcom/duoku/platform/view/a/f$6;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/f$6;-><init>(Lcom/duoku/platform/view/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/f;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->r:Landroid/widget/ListView;

    return-object v0
.end method

.method private c(Lcom/duoku/platform/ui/a/g;)V
    .registers 5

    .prologue
    .line 708
    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 709
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 710
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 711
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/f;I)V
    .registers 2

    .prologue
    .line 82
    iput p1, p0, Lcom/duoku/platform/view/a/f;->y:I

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V
    .registers 2

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/ui/a/g;)V

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/duoku/platform/view/a/f;->S:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/f;Z)V
    .registers 2

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/duoku/platform/view/a/f;->U:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 575
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/duoku/platform/f/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_MESSAGE_INFO_READ_URL:Ljava/lang/String;

    const/16 v3, 0xf

    new-instance v4, Lcom/duoku/platform/view/a/f$e;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/a/f$e;-><init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/view/a/f$e;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 578
    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d(Lcom/duoku/platform/ui/a/g;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 813
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->T:Z

    if-nez v0, :cond_33

    .line 816
    const/16 v0, 0x8

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->c()I

    move-result v2

    if-ne v0, v2, :cond_34

    .line 818
    const/4 v0, 0x2

    .line 824
    :goto_e
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/duoku/platform/f/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/util/Constants;->DK_GET_WELFARE:Ljava/lang/String;

    const/16 v4, 0x3a

    new-instance v5, Lcom/duoku/platform/view/a/f$b;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/duoku/platform/view/a/f$b;-><init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/view/a/f$b;)V

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 826
    iput-boolean v1, p0, Lcom/duoku/platform/view/a/f;->T:Z

    .line 828
    :cond_33
    return-void

    :cond_34
    move v0, v1

    .line 822
    goto :goto_e
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/f;I)V
    .registers 2

    .prologue
    .line 81
    iput p1, p0, Lcom/duoku/platform/view/a/f;->x:I

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V
    .registers 2

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/ui/a/g;)V

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/duoku/platform/view/a/f;->W:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/f;Z)V
    .registers 2

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/duoku/platform/view/a/f;->T:Z

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    return-object v0
.end method

.method private e(Lcom/duoku/platform/ui/a/g;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 905
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_21

    .line 907
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v3, "dk_tip_payment_network_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 955
    :goto_20
    return-void

    .line 910
    :cond_21
    iput-boolean v4, p0, Lcom/duoku/platform/view/a/f;->L:Z

    .line 911
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    .line 912
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 913
    const/4 v1, 0x6

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 914
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->q:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 917
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 918
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    new-instance v1, Lcom/duoku/platform/view/a/f$8;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/f$8;-><init>(Lcom/duoku/platform/view/a/f;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 939
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    new-instance v1, Lcom/duoku/platform/view/a/f$9;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/f$9;-><init>(Lcom/duoku/platform/view/a/f;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 954
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_20
.end method

.method static synthetic e(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/duoku/platform/view/a/f;)I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/duoku/platform/view/a/f;->F:I

    return v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/a/f;)Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->H:Z

    return v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/a/f;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->E:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/view/a/f;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->G:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/view/a/f;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->z:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/view/a/f;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->Z:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/view/a/f;)I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/duoku/platform/view/a/f;->x:I

    return v0
.end method

.method static synthetic m(Lcom/duoku/platform/view/a/f;)I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/duoku/platform/view/a/f;->y:I

    return v0
.end method

.method static synthetic n(Lcom/duoku/platform/view/a/f;)Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->s:Z

    return v0
.end method

.method private o()V
    .registers 5

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    const-string v1, "com.duoku.game.helper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "com.duoku.game.helper.ex.uservice.IDKUserService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    new-instance v1, Lcom/duoku/platform/view/a/f$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/duoku/platform/view/a/f$d;-><init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/view/a/f$d;)V

    iput-object v1, p0, Lcom/duoku/platform/view/a/f;->P:Lcom/duoku/platform/view/a/f$d;

    .line 167
    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/f;->P:Lcom/duoku/platform/view/a/f$d;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 168
    return-void
.end method

.method static synthetic o(Lcom/duoku/platform/view/a/f;)Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->D:Z

    return v0
.end method

.method static synthetic p(Lcom/duoku/platform/view/a/f;)Landroid/widget/BaseAdapter;
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->ac:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private p()V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_head"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->i:Landroid/widget/LinearLayout;

    .line 190
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_tv_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->j:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->j:Landroid/widget/TextView;

    const-string v1, "dk_message_title"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_payment_iv_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->p:Landroid/widget/ImageView;

    .line 193
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_iv_payment_back"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->o:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_message_content_bt_canclick"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_message_content_bt_noclick"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_message_layout"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->q:Landroid/widget/RelativeLayout;

    .line 197
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_message_list"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->r:Landroid/widget/ListView;

    .line 198
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_message_refresh_footer"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->w:Landroid/widget/RelativeLayout;

    .line 199
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->r:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_message_not_exist"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->G:Landroid/widget/RelativeLayout;

    .line 201
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_message_detail"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->b:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->r:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->ab:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->aa:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->o:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_layout_progress_account"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->z:Landroid/widget/LinearLayout;

    .line 206
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_account_user_shodow"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->B:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_layout_net_work_error"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->E:Landroid/widget/FrameLayout;

    .line 208
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v1, "dk_message_content_layout"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->A:Landroid/widget/LinearLayout;

    .line 209
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_message_content"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->n:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_messge_source"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->m:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_message_content_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->k:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_messge_date"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->l:Landroid/widget/TextView;

    .line 213
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_message_iv"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->c:Landroid/widget/LinearLayout;

    .line 215
    return-void
.end method

.method static synthetic q(Lcom/duoku/platform/view/a/f;)Landroid/view/View;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->B:Landroid/view/View;

    return-object v0
.end method

.method private q()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->C:Z

    if-eqz v0, :cond_13

    .line 267
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iput-boolean v2, p0, Lcom/duoku/platform/view/a/f;->C:Z

    .line 273
    :cond_13
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->u:Ljava/lang/String;

    const-string v2, "20"

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_MESSAGE_INFO_URL:Ljava/lang/String;

    const/16 v3, 0xc

    new-instance v4, Lcom/duoku/platform/view/a/f$c;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/a/f$c;-><init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/view/a/f$c;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 275
    return-void
.end method

.method static synthetic r(Lcom/duoku/platform/view/a/f;)I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/duoku/platform/view/a/f;->K:I

    return v0
.end method

.method private r()V
    .registers 4

    .prologue
    .line 716
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/view/a/f$7;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/a/f$7;-><init>(Lcom/duoku/platform/view/a/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    .line 737
    return-void
.end method

.method static synthetic s(Lcom/duoku/platform/view/a/f;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->J:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic t(Lcom/duoku/platform/view/a/f;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->I:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic u(Lcom/duoku/platform/view/a/f;)Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->t:Z

    return v0
.end method

.method static synthetic v(Lcom/duoku/platform/view/a/f;)I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/duoku/platform/view/a/f;->R:I

    return v0
.end method

.method static synthetic w(Lcom/duoku/platform/view/a/f;)Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->U:Z

    return v0
.end method

.method static synthetic x(Lcom/duoku/platform/view/a/f;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 116
    sget-object v0, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->d:Lcom/duoku/platform/c/c;

    .line 118
    return-void
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 247
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcom/duoku/platform/e/a;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->a:Lcom/duoku/platform/e/a;

    .line 136
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 138
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_message_landscape"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->e:Landroid/view/ViewGroup;

    .line 144
    :goto_26
    invoke-direct {p0}, Lcom/duoku/platform/view/a/f;->p()V

    .line 145
    if-nez p1, :cond_45

    .line 147
    invoke-direct {p0}, Lcom/duoku/platform/view/a/f;->q()V

    .line 158
    :goto_2e
    invoke-direct {p0}, Lcom/duoku/platform/view/a/f;->o()V

    .line 159
    return-void

    .line 142
    :cond_32
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    const-string v2, "dk_message_portrait"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->e:Landroid/view/ViewGroup;

    goto :goto_26

    .line 151
    :cond_45
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dkAppUrl"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->S:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dkAppVersion"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->W:Ljava/lang/String;

    .line 153
    check-cast p1, Lcom/duoku/platform/ui/a/g;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/view/a/f;->t:Z

    .line 155
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/ui/a/g;)V

    .line 156
    invoke-virtual {p1}, Lcom/duoku/platform/ui/a/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/f;->c(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 467
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->s:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->L:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->t:Z

    if-nez v0, :cond_34

    .line 469
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->j:Landroid/widget/TextView;

    const-string v1, "dk_message_title"

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 474
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 476
    :cond_31
    iput-boolean v2, p0, Lcom/duoku/platform/view/a/f;->s:Z

    .line 499
    :goto_33
    return-void

    .line 478
    :cond_34
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->L:Z

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->t:Z

    if-nez v0, :cond_68

    .line 480
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 482
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_33

    .line 486
    :cond_4a
    iput-boolean v2, p0, Lcom/duoku/platform/view/a/f;->L:Z

    .line 487
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 490
    iput-boolean v2, p0, Lcom/duoku/platform/view/a/f;->U:Z

    .line 491
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 492
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->V:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_33

    .line 497
    :cond_68
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    goto :goto_33
.end method

.method public d()V
    .registers 3

    .prologue
    .line 222
    invoke-super {p0}, Lcom/duoku/platform/view/a;->d()V

    .line 224
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->X:Z

    if-nez v0, :cond_18

    .line 227
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 231
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/f;->t:Z

    if-nez v0, :cond_18

    .line 233
    iget v0, p0, Lcom/duoku/platform/view/a/f;->F:I

    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/f;->b(I)V

    .line 236
    :cond_18
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->P:Lcom/duoku/platform/view/a/f$d;

    if-eqz v0, :cond_26

    .line 238
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f;->P:Lcom/duoku/platform/view/a/f$d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f;->P:Lcom/duoku/platform/view/a/f$d;

    .line 241
    :cond_26
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 173
    invoke-super {p0}, Lcom/duoku/platform/view/a;->h()V

    .line 175
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 177
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/duoku/platform/view/a;->i()V

    .line 184
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 185
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/duoku/platform/view/a/f;->Q:Lcom/duoku/a/a/a/a/a;

    if-nez v0, :cond_7

    .line 1017
    invoke-direct {p0}, Lcom/duoku/platform/view/a/f;->o()V

    .line 1019
    :cond_7
    return-void
.end method
