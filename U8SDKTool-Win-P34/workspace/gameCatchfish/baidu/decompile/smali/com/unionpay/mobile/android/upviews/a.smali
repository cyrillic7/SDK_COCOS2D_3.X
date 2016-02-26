.class public final Lcom/unionpay/mobile/android/upviews/a;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/unionpay/mobile/android/upwidget/o$a;
.implements Lcom/unionpay/mobile/android/widgets/ag$a;
.implements Lcom/unionpay/mobile/android/widgets/ao$a;
.implements Lcom/unionpay/mobile/android/widgets/z$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upviews/a$a;,
        Lcom/unionpay/mobile/android/upviews/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unionpay/mobile/android/widgets/m;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/widgets/y;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Lcom/unionpay/mobile/android/upviews/a$b;

.field private f:Z

.field private g:Z

.field private h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;Z)V
    .registers 19

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZB)V
    .registers 20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZC)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZC)V
    .registers 22

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v11}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZZLcom/unionpay/mobile/android/widgets/y;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZZLcom/unionpay/mobile/android/widgets/y;Lorg/json/JSONArray;)V
    .registers 18

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unionpay/mobile/android/upviews/a;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upviews/a;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upviews/a;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/unionpay/mobile/android/upviews/a;->d:J

    iput-object p5, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    iput-boolean p8, p0, Lcom/unionpay/mobile/android/upviews/a;->f:Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/unionpay/mobile/android/upviews/a;->setPadding(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->setOrientation(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->setBackgroundColor(I)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p6

    move v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;ZLcom/unionpay/mobile/android/widgets/y;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;)V
    .registers 13

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Z)Lcom/unionpay/mobile/android/upviews/a$a;
    .registers 10

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/unionpay/mobile/android/upviews/a$a;

    const-string v0, ""

    invoke-direct {v3, p0, v0}, Lcom/unionpay/mobile/android/upviews/a$a;-><init>(Lcom/unionpay/mobile/android/upviews/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    instance-of v4, v0, Lcom/unionpay/mobile/android/widgets/ae;

    if-eqz v4, :cond_58

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->c()Z

    move-result v4

    if-nez v4, :cond_3e

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/languages/c;->aE:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_14

    :cond_3e
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->b()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/languages/c;->aE:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_14

    :cond_58
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->c()Z

    move-result v4

    if-nez v4, :cond_79

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->q()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    :cond_71
    :goto_71
    invoke-virtual {v3}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_93

    move-object v0, v3

    :goto_78
    return-object v0

    :cond_79
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->b()Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->q()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_71

    :cond_93
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_ef

    move v1, v2

    :goto_9d
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_ef

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    instance-of v5, v0, Lcom/unionpay/mobile/android/widgets/ac;

    if-nez v5, :cond_eb

    instance-of v0, v0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-eqz v0, :cond_b7

    if-eqz p1, :cond_eb

    :cond_b7
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_eb

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->e()Z

    move-result v0

    if-eqz v0, :cond_eb

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_eb
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9d

    :cond_ef
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_fd

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_fd
    invoke-virtual {v3, v2, v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_78
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upviews/a;)Lcom/unionpay/mobile/android/widgets/m;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/mobile/android/widgets/y;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/unionpay/mobile/android/widgets/y;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public final a()Lcom/unionpay/mobile/android/upviews/a$a;
    .registers 8

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v0, Lcom/unionpay/mobile/android/upviews/a$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/unionpay/mobile/android/upviews/a$a;-><init>(Lcom/unionpay/mobile/android/upviews/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v2, "pin"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/y;->c()Z

    move-result v2

    if-nez v2, :cond_34

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/y;->q()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    :cond_2d
    :goto_2d
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_4e

    :cond_33
    :goto_33
    return-object v0

    :cond_34
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/y;->b()Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/y;->q()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_2d

    :cond_4e
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/y;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    goto :goto_33
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v0

    :cond_e
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v1, "sms"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v0

    if-eqz v0, :cond_f

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ao;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/ao;->a(I)V

    :cond_f
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 4

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/ai;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/ai;->b(Landroid/view/View$OnClickListener;)V

    :cond_11
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/m;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/t;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    if-eqz v0, :cond_13

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_14

    :cond_d
    move v0, v2

    :goto_e
    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v1, v0}, Lcom/unionpay/mobile/android/upviews/a$b;->a(Z)V

    :cond_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/widgets/y;

    instance-of v0, v1, Lcom/unionpay/mobile/android/widgets/z;

    if-eqz v0, :cond_1e

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/z;->a(Lcom/unionpay/mobile/android/widgets/t;)Z

    move-result v0

    if-nez v0, :cond_1e

    check-cast v1, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/z;->c()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v2

    goto :goto_e

    :cond_41
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/y;)V
    .registers 13

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    instance-of v0, p1, Lcom/unionpay/mobile/android/widgets/ao;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    if-eqz v1, :cond_b

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    new-instance v1, Lcom/unionpay/mobile/android/upviews/a$a;

    const-string v0, ""

    invoke-direct {v1, p0, v0}, Lcom/unionpay/mobile/android/upviews/a$a;-><init>(Lcom/unionpay/mobile/android/upviews/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v2, "mobile"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v3, "pan"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v4, "card"

    invoke-static {v0, v4}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    const-string v5, "area_code"

    invoke-static {v0, v5}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v5

    const-string v0, ""

    if-eqz v3, :cond_53

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/y;->c()Z

    move-result v6

    if-nez v6, :cond_5f

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    sget-object v7, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v7, v7, Lcom/unionpay/mobile/android/languages/c;->aE:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    :cond_53
    :goto_53
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v3

    if-nez v3, :cond_8f

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/upviews/a$b;->a(Lcom/unionpay/mobile/android/upviews/a$a;)V

    goto :goto_b

    :cond_5f
    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/y;->b()Z

    move-result v6

    if-nez v6, :cond_79

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    sget-object v7, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v7, v7, Lcom/unionpay/mobile/android/languages/c;->aE:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v3}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_53

    :cond_79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_8f
    if-eqz v2, :cond_aa

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/y;->c()Z

    move-result v3

    if-nez v3, :cond_b7

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/y;->q()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    :cond_aa
    :goto_aa
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_103

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/upviews/a$b;->a(Lcom/unionpay/mobile/android/upviews/a$a;)V

    goto/16 :goto_b

    :cond_b7
    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/y;->b()Z

    move-result v3

    if-nez v3, :cond_d1

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/y;->q()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    goto :goto_aa

    :cond_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_100

    const-string v0, ""

    :goto_e2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_aa

    :cond_100
    const-string v0, ","

    goto :goto_e2

    :cond_103
    if-eqz v4, :cond_13d

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_181

    const-string v0, ""

    :goto_120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_13d
    if-eqz v5, :cond_177

    invoke-virtual {v5}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_177

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_184

    const-string v0, ""

    :goto_15a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/unionpay/mobile/android/widgets/y;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_177
    invoke-virtual {v1, v8, v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/upviews/a$b;->a(Lcom/unionpay/mobile/android/upviews/a$a;)V

    goto/16 :goto_b

    :cond_181
    const-string v0, ","

    goto :goto_120

    :cond_184
    const-string v0, ","

    goto :goto_15a
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v0, p1, p2}, Lcom/unionpay/mobile/android/upviews/a$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 9

    const/4 v3, 0x0

    const-string v0, "promotion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "instalment"

    :goto_b
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v1

    if-nez v2, :cond_19

    :cond_15
    :goto_15
    return-void

    :cond_16
    const-string v0, "promotion"

    goto :goto_b

    :cond_19
    if-eqz v1, :cond_c7

    instance-of v0, v1, Lcom/unionpay/mobile/android/widgets/p;

    if-eqz v0, :cond_40

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/p;->f()Z

    move-result v0

    :goto_26
    if-eqz p2, :cond_2c

    if-eqz v1, :cond_2c

    if-nez v0, :cond_4c

    :cond_2c
    instance-of v0, v2, Lcom/unionpay/mobile/android/widgets/p;

    if-eqz v0, :cond_36

    move-object v0, v2

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {v0, p2}, Lcom/unionpay/mobile/android/widgets/p;->a(Z)V

    :cond_36
    instance-of v0, v2, Lcom/unionpay/mobile/android/widgets/ai;

    if-eqz v0, :cond_15

    check-cast v2, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v2, p2}, Lcom/unionpay/mobile/android/widgets/ai;->a(Z)V

    goto :goto_15

    :cond_40
    instance-of v0, v1, Lcom/unionpay/mobile/android/widgets/ai;

    if-eqz v0, :cond_c7

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ai;->f()Z

    move-result v0

    goto :goto_26

    :cond_4c
    if-eqz v1, :cond_15

    const-string v0, "instalment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upviews/a;->g:Z

    const-string v0, "promotion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    move-object v0, v2

    :goto_5f
    const-string v4, "promotion"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b3

    :goto_67
    iget-boolean v2, p0, Lcom/unionpay/mobile/android/upviews/a;->g:Z

    if-eqz v2, :cond_b5

    new-instance v2, Lcom/unionpay/mobile/android/upviews/b;

    invoke-direct {v2, p0, v0, v1}, Lcom/unionpay/mobile/android/upviews/b;-><init>(Lcom/unionpay/mobile/android/upviews/a;Lcom/unionpay/mobile/android/widgets/y;Lcom/unionpay/mobile/android/widgets/y;)V

    new-instance v3, Lcom/unionpay/mobile/android/upviews/c;

    invoke-direct {v3, p0, v0, v1}, Lcom/unionpay/mobile/android/upviews/c;-><init>(Lcom/unionpay/mobile/android/upviews/a;Lcom/unionpay/mobile/android/widgets/y;Lcom/unionpay/mobile/android/widgets/y;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    const-string v1, "func"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    const-string v2, "cancel"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v3, p0, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    const-string v4, "title"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/upviews/a;->h:Lorg/json/JSONObject;

    const-string v5, "text"

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "label"

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "label"

    invoke-static {v0, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_b1
    move-object v0, v1

    goto :goto_5f

    :cond_b3
    move-object v1, v2

    goto :goto_67

    :cond_b5
    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v0, p2}, Lcom/unionpay/mobile/android/widgets/ai;->a(Z)V

    move-object v0, v1

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    if-nez p2, :cond_c5

    const/4 v1, 0x1

    :goto_c0
    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(Z)V

    goto/16 :goto_15

    :cond_c5
    move v1, v3

    goto :goto_c0

    :cond_c7
    move v0, v3

    goto/16 :goto_26
.end method

.method public final a(Lorg/json/JSONArray;)V
    .registers 4

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/ai;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lorg/json/JSONArray;)V

    :cond_11
    return-void
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 5

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/ai;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;ZLcom/unionpay/mobile/android/widgets/y;Lorg/json/JSONArray;)V
    .registers 19

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-nez v2, :cond_ff

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    :goto_15
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->removeAllViews()V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/upviews/a;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    const/4 v4, 0x0

    const-string v3, ""

    sget v2, Lcom/unionpay/mobile/android/global/a;->I:I

    sget v5, Lcom/unionpay/mobile/android/global/a;->f:I

    mul-int/lit8 v5, v5, 0x4

    sub-int v8, v2, v5

    const/4 v2, 0x0

    move-object v5, v4

    move v4, v2

    move-object v2, v3

    :goto_34
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_8

    const/4 v6, 0x0

    :try_start_3b
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v3, "type"

    invoke-static {v9, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_44} :catch_22d

    move-result-object v7

    :try_start_45
    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v10, "type"

    invoke-static {v9, v10}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "pan"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_106

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ae;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/ae;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_5b} :catch_284

    move-object v2, v3

    :goto_5c
    :try_start_5c
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v9, -0x2

    invoke-direct {v6, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_63} :catch_288

    move-object v3, v2

    move-object v5, v7

    :goto_65
    if-eqz v3, :cond_f8

    instance-of v2, v3, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-eqz v2, :cond_23c

    move-object v2, v3

    check-cast v2, Lcom/unionpay/mobile/android/widgets/UPWidget;

    iget-wide v10, p0, Lcom/unionpay/mobile/android/upviews/a;->d:J

    invoke-virtual {v2, v10, v11}, Lcom/unionpay/mobile/android/widgets/UPWidget;->a(J)V

    move-object v2, v3

    check-cast v2, Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-virtual {v2, p2}, Lcom/unionpay/mobile/android/widgets/UPWidget;->b(Ljava/lang/String;)V

    move-object v2, v3

    check-cast v2, Lcom/unionpay/mobile/android/widgets/UPWidget;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->b(Z)V

    :cond_81
    :goto_81
    instance-of v2, v3, Lcom/unionpay/mobile/android/widgets/z;

    if-eqz v2, :cond_8f

    instance-of v2, v3, Lcom/unionpay/mobile/android/widgets/bc;

    if-nez v2, :cond_8f

    move-object v2, v3

    check-cast v2, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v2, p0}, Lcom/unionpay/mobile/android/widgets/z;->a(Lcom/unionpay/mobile/android/widgets/z$a;)V

    :cond_8f
    const-string v2, "instalment"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v7, -0x342f27

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v4, :cond_254

    iget-object v9, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41200000

    invoke-static {v9, v10}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_b7
    :goto_b7
    iget-boolean v9, p0, Lcom/unionpay/mobile/android/upviews/a;->f:Z

    if-eqz v9, :cond_26b

    if-nez v4, :cond_26b

    if-eqz p4, :cond_26b

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v6}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/y;->getVisibility()I

    move-result v9

    if-nez v9, :cond_cd

    invoke-virtual {p0, v2, v7}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_cd
    invoke-virtual {p0, v3, v6}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d0
    :goto_d0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v4, v2, :cond_dc

    instance-of v2, v3, Lcom/unionpay/mobile/android/widgets/ai;

    if-eqz v2, :cond_f3

    :cond_dc
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v7, -0x342f27

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v7}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f3
    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v5

    move-object v5, v6

    goto/16 :goto_34

    :cond_ff
    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_15

    :cond_106
    :try_start_106
    const-string v11, "mobile"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_116

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ag;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/ag;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_116
    const-string v11, "sms"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_127

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ao;

    const/4 v10, 0x0

    invoke-direct {v3, v2, v8, v9, v10}, Lcom/unionpay/mobile/android/widgets/ao;-><init>(Landroid/content/Context;ILorg/json/JSONObject;B)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_127
    const-string v11, "cvn2"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_137

    new-instance v3, Lcom/unionpay/mobile/android/widgets/e;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/e;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_137
    const-string v11, "expire"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_147

    new-instance v3, Lcom/unionpay/mobile/android/widgets/au;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/au;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_147
    const-string v11, "pwd"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_157

    new-instance v3, Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/UPWidget;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_157
    const-string v11, "text"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_167

    new-instance v3, Lcom/unionpay/mobile/android/widgets/as;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/as;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_167
    const-string v11, "string"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_177

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ac;

    invoke-direct {v3, v2, v9}, Lcom/unionpay/mobile/android/widgets/ac;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_177
    const-string v11, "cert_id"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_187

    new-instance v3, Lcom/unionpay/mobile/android/widgets/f;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/f;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_187
    const-string v11, "cert_type"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_197

    new-instance v3, Lcom/unionpay/mobile/android/widgets/g;

    invoke-direct {v3, v2, v9}, Lcom/unionpay/mobile/android/widgets/g;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_197
    const-string v11, "name"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a7

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ad;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/ad;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_1a7
    const-string v11, "hidden"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b7

    new-instance v3, Lcom/unionpay/mobile/android/widgets/x;

    invoke-direct {v3, v2, v9}, Lcom/unionpay/mobile/android/widgets/x;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_1b7
    const-string v11, "user_name"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c7

    new-instance v3, Lcom/unionpay/mobile/android/widgets/at;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/at;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_1c7
    const-string v11, "password"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d7

    new-instance v3, Lcom/unionpay/mobile/android/widgets/an;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/an;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_1d7
    const-string v11, "point"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e7

    new-instance v3, Lcom/unionpay/mobile/android/widgets/bc;

    invoke-direct {v3, v2, v8, v9}, Lcom/unionpay/mobile/android/widgets/bc;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_1e7
    const-string v2, "instalment"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_200

    new-instance v3, Lcom/unionpay/mobile/android/widgets/p;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-direct {v3, v2, v9}, Lcom/unionpay/mobile/android/widgets/p;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    move-object v0, v3

    check-cast v0, Lcom/unionpay/mobile/android/widgets/p;

    move-object v2, v0

    invoke-virtual {v2, p0}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/upwidget/o$a;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_200
    const-string v2, "promotion"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_219

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ai;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    invoke-direct {v3, v2, v9}, Lcom/unionpay/mobile/android/widgets/ai;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    move-object v0, v3

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    move-object v2, v0

    invoke-virtual {v2, p0}, Lcom/unionpay/mobile/android/widgets/ai;->a(Lcom/unionpay/mobile/android/upwidget/o$a;)V

    move-object v2, v3

    goto/16 :goto_5c

    :cond_219
    const-string v2, "area_code"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28b

    new-instance v3, Lcom/unionpay/mobile/android/widgets/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    move-object/from16 v0, p5

    invoke-direct {v3, v2, v9, v0}, Lcom/unionpay/mobile/android/widgets/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    :try_end_22a
    .catch Lorg/json/JSONException; {:try_start_106 .. :try_end_22a} :catch_284

    move-object v2, v3

    goto/16 :goto_5c

    :catch_22d
    move-exception v3

    move-object v3, v2

    move-object v2, v6

    :goto_230
    const-string v6, "uppay"

    const-string v7, "json parser exception!!! - UPRuleView"

    invoke-static {v6, v7}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_65

    :cond_23c
    instance-of v2, v3, Lcom/unionpay/mobile/android/widgets/ao;

    if-eqz v2, :cond_248

    move-object v2, v3

    check-cast v2, Lcom/unionpay/mobile/android/widgets/ao;

    invoke-virtual {v2, p0}, Lcom/unionpay/mobile/android/widgets/ao;->a(Lcom/unionpay/mobile/android/widgets/ao$a;)V

    goto/16 :goto_81

    :cond_248
    instance-of v2, v3, Lcom/unionpay/mobile/android/widgets/ag;

    if-eqz v2, :cond_81

    move-object v2, v3

    check-cast v2, Lcom/unionpay/mobile/android/widgets/ag;

    invoke-virtual {v2, p0}, Lcom/unionpay/mobile/android/widgets/ag;->a(Lcom/unionpay/mobile/android/widgets/ag$a;)V

    goto/16 :goto_81

    :cond_254
    iget-boolean v9, p0, Lcom/unionpay/mobile/android/upviews/a;->f:Z

    if-eqz v9, :cond_b7

    iget-object v9, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    const/high16 v10, 0x41200000

    invoke-static {v9, v10}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/unionpay/mobile/android/upviews/a;->setPadding(IIII)V

    goto/16 :goto_b7

    :cond_26b
    invoke-virtual {v3}, Lcom/unionpay/mobile/android/widgets/y;->getVisibility()I

    move-result v9

    if-nez v9, :cond_d0

    invoke-virtual {p0, v2, v7}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3, v6}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v2, v3, Lcom/unionpay/mobile/android/widgets/ae;

    if-eqz v2, :cond_d0

    if-eqz p4, :cond_d0

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v6}, Lcom/unionpay/mobile/android/upviews/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d0

    :catch_284
    move-exception v2

    move-object v2, v6

    move-object v3, v7

    goto :goto_230

    :catch_288
    move-exception v3

    move-object v3, v7

    goto :goto_230

    :cond_28b
    move-object v2, v3

    goto/16 :goto_5c
.end method

.method public final b()Lcom/unionpay/mobile/android/upviews/a$a;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Z)Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/upviews/a;->a(Ljava/util/List;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/y;->a()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .registers 4

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/ai;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/ai;->c(Landroid/view/View$OnClickListener;)V

    :cond_11
    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_14

    :cond_32
    move-object v0, v1

    goto :goto_14
.end method

.method public final c()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Z)Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_48

    move v1, v0

    :goto_17
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_48

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    instance-of v3, v0, Lcom/unionpay/mobile/android/widgets/ac;

    if-nez v3, :cond_44

    instance-of v3, v0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-nez v3, :cond_44

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_48
    move-object v0, v2

    goto :goto_c
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .registers 4

    const-string v0, "promotion"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/y;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/ai;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/ai;->a(Landroid/view/View$OnClickListener;)V

    :cond_11
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->e:Lcom/unionpay/mobile/android/upviews/a$b;

    invoke-interface {v0, p1}, Lcom/unionpay/mobile/android/upviews/a$b;->c(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final d()Z
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    instance-of v1, v0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/UPWidget;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    check-cast v0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->j()V

    const/4 v0, 0x1

    move v1, v0

    :goto_2b
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->a:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/a;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v1

    :cond_3d
    move v1, v2

    goto :goto_2b
.end method

.method public final e()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    instance-of v4, v0, Lcom/unionpay/mobile/android/widgets/z;

    if-eqz v4, :cond_c

    check-cast v0, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/z;->c()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_25
    if-nez v0, :cond_2b

    move v0, v1

    :goto_28
    return v0

    :cond_29
    move v0, v2

    goto :goto_25

    :cond_2b
    move v0, v2

    goto :goto_28
.end method

.method public final f()V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/y;

    instance-of v2, v0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-nez v2, :cond_2b

    instance-of v2, v0, Lcom/unionpay/mobile/android/widgets/e;

    if-nez v2, :cond_2b

    instance-of v2, v0, Lcom/unionpay/mobile/android/widgets/au;

    if-eqz v2, :cond_13

    :cond_2b
    check-cast v0, Lcom/unionpay/mobile/android/widgets/z;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/z;->f()V

    goto :goto_13
.end method
