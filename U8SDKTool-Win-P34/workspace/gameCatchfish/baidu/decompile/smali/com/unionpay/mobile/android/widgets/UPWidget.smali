.class public final Lcom/unionpay/mobile/android/widgets/UPWidget;
.super Lcom/unionpay/mobile/android/widgets/z;

# interfaces
.implements Lcom/unionpay/mobile/android/widgets/t$b;


# static fields
.field private static final n:I


# instance fields
.field private o:J

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Z

.field private t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private u:Lcom/unionpay/mobile/android/widgets/ba;

.field private v:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/unionpay/mobile/android/global/a;->t:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/unionpay/mobile/android/widgets/UPWidget;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->p:Z

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->q:Ljava/lang/String;

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->s:Z

    new-instance v0, Lcom/unionpay/mobile/android/widgets/av;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/av;-><init>(Lcom/unionpay/mobile/android/widgets/UPWidget;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/aw;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/aw;-><init>(Lcom/unionpay/mobile/android/widgets/UPWidget;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->v:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->u()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JILorg/json/JSONObject;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p4, p5}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->p:Z

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->q:Ljava/lang/String;

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->s:Z

    new-instance v0, Lcom/unionpay/mobile/android/widgets/av;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/av;-><init>(Lcom/unionpay/mobile/android/widgets/UPWidget;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/aw;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/aw;-><init>(Lcom/unionpay/mobile/android/widgets/UPWidget;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->v:Landroid/view/View$OnClickListener;

    iput-wide p2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->o:J

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->u()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->d()V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/UPWidget;)Landroid/view/View;
    .registers 2

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->w()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/UPWidget;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/widgets/UPWidget;->deleteOnce(J)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/UPWidget;JLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/UPWidget;->appendOnce(JLjava/lang/String;)V

    return-void
.end method

.method private native appendOnce(JLjava/lang/String;)V
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/widgets/UPWidget;)I
    .registers 2

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    return v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/widgets/UPWidget;)V
    .registers 4

    const-string v0, "kb"

    const-string v1, "pwdInputFinished() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "kb"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->j()V

    const-string v0, "kb"

    const-string v1, "pwdInputFinished() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native clearAll(J)V
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/widgets/UPWidget;)J
    .registers 3

    iget-wide v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->o:J

    return-wide v0
.end method

.method private native deleteOnce(J)V
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/widgets/UPWidget;)I
    .registers 3

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    return v0
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/widgets/UPWidget;)I
    .registers 3

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    return v0
.end method

.method private native getMsg(J)Ljava/lang/String;
.end method

.method private native getMsgExtra(JLjava/lang/String;)Ljava/lang/String;
.end method

.method static synthetic l()I
    .registers 1

    sget v0, Lcom/unionpay/mobile/android/widgets/UPWidget;->n:I

    return v0
.end method

.method private u()V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/widgets/t;->a(Lcom/unionpay/mobile/android/widgets/t$b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->b:Lcom/unionpay/mobile/android/widgets/t;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->f()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->d()V

    return-void
.end method

.method private v()V
    .registers 3

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->w()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->w()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_13
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ba;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ba;->a()V

    :cond_24
    return-void
.end method

.method private w()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x22b8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->p:Z

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->o:J

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/UPWidget;->getMsgExtra(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-wide v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->o:J

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/UPWidget;->getMsg(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public final a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->o:J

    return-void
.end method

.method public final a(Z)V
    .registers 6

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->s:Z

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/t;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->w()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->w()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/widgets/UPWidget;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_3d

    move v0, v1

    :cond_3d
    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->k()V

    :cond_42
    :goto_42
    return-void

    :cond_43
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->i()Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "uppay"

    const-string v1, "key board is closing.."

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uppay"

    const-string v1, "registerKeyboardDissmisslisner() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->w()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->w()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_6a
    const-string v0, "uppay"

    const-string v1, "registerKeyboardDissmisslisner() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :cond_72
    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->v()V

    goto :goto_42
.end method

.method public final a_()V
    .registers 2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->s:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->i()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->k()V

    :cond_d
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->q:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->p:Z

    return-void
.end method

.method public final b()Z
    .registers 3

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final c()Z
    .registers 4

    const-string v0, "uppay"

    const-string v1, "emptyCheck() +++ "

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPINCounts =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uppay"

    const-string v1, "emptyCheck() --- "

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public final d()V
    .registers 3

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    if-lez v0, :cond_c

    iget-wide v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->o:J

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/UPWidget;->clearAll(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    :cond_c
    return-void
.end method

.method public final i()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/ba;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public final j()V
    .registers 3

    const-string v0, "uppay"

    const-string v1, "closeCustomKeyboard() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->v()V

    :cond_10
    const-string v0, "uppay"

    const-string v1, "closeCustomKeyboard() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .registers 5

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->s:Z

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->i()Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ba;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->v:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, p0}, Lcom/unionpay/mobile/android/widgets/ba;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->u:Lcom/unionpay/mobile/android/widgets/ba;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/widgets/ba;->a(Landroid/view/View;)V

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->r:I

    const-string v1, ""

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v2, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_39
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->b(I)V

    :cond_47
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/unionpay/mobile/android/widgets/z;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/UPWidget;->j()V

    return-void
.end method
