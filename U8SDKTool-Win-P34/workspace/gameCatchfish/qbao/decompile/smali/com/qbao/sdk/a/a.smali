.class public Lcom/qbao/sdk/a/a;
.super Ljava/lang/Object;
.source "GameLogin.java"


# static fields
.field private static cR:Lcom/qbao/sdk/a/a;

.field private static cT:Ljava/lang/String;

.field private static cW:Ljava/lang/String;


# instance fields
.field private cS:Ljava/lang/String;

.field private cU:Ljava/lang/String;

.field private cV:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/qbao/sdk/a/a;->mContext:Landroid/content/Context;

    .line 44
    sput-object p0, Lcom/qbao/sdk/a/a;->cR:Lcom/qbao/sdk/a/a;

    .line 45
    sput-object p2, Lcom/qbao/sdk/a/a;->cW:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static R(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 341
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_13

    .line 342
    :cond_11
    const/4 v0, 0x0

    .line 344
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static S(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 348
    if-eqz p0, :cond_16

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_16

    invoke-static {p0}, Lcom/qbao/sdk/e/h;->an(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 349
    :cond_16
    const/4 v0, 0x0

    .line 351
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method static synthetic V(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lcom/qbao/sdk/a/a;->cT:Ljava/lang/String;

    return-void
.end method

.method public static Y()Lcom/qbao/sdk/a/a;
    .registers 3

    .prologue
    .line 52
    sget-object v0, Lcom/qbao/sdk/a/a;->cR:Lcom/qbao/sdk/a/a;

    if-nez v0, :cond_10

    .line 53
    new-instance v0, Lcom/qbao/sdk/a/a;

    invoke-static {}, Lcom/qbao/sdk/a/e;->ae()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/qbao/sdk/a/a;->cW:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/qbao/sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lcom/qbao/sdk/a/a;->cR:Lcom/qbao/sdk/a/a;

    goto :goto_f
.end method

.method private Z()V
    .registers 4

    .prologue
    .line 83
    new-instance v0, Lcom/qbao/sdk/ui/LoginView;

    iget-object v1, p0, Lcom/qbao/sdk/a/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qbao/sdk/ui/LoginView;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object v1, p0, Lcom/qbao/sdk/a/a;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/qbao/sdk/ui/a;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qbao/sdk/a/a;->cU:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/qbao/core/a/b;)V
    .registers 5

    .prologue
    .line 112
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    if-nez v0, :cond_7

    .line 149
    :goto_6
    return-void

    .line 114
    :cond_7
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/e;->ar()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/qbao/core/c/f;

    invoke-direct {v1}, Lcom/qbao/core/c/f;-><init>()V

    .line 117
    const-string v2, "appCode"

    invoke-virtual {v1, v2, v0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/qbao/sdk/a/a$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/qbao/sdk/a/a$2;-><init>(Lcom/qbao/sdk/a/a;Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V

    .line 148
    invoke-virtual {v0}, Lcom/qbao/sdk/b/c;->y()V

    goto :goto_6
.end method

.method static synthetic a(Lcom/qbao/sdk/a/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/qbao/sdk/a/a;->cS:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 4

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/qbao/sdk/a/a;->e(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    return-void
.end method

.method static synthetic b(Lcom/qbao/sdk/a/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qbao/sdk/a/a;->cU:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/qbao/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 4

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/qbao/sdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 5

    .prologue
    .line 91
    new-instance v0, Lcom/qbao/sdk/a/a$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/qbao/sdk/a/a$1;-><init>(Lcom/qbao/sdk/a/a;Lcom/qbao/core/a/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qbao/sdk/a/a;->a(Lcom/qbao/core/a/b;)V

    .line 106
    return-void
.end method

.method static synthetic c(Lcom/qbao/sdk/a/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/qbao/sdk/a/a;->cV:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 10

    .prologue
    .line 233
    sget-object v0, Lcom/qbao/sdk/a/a;->cT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 234
    const/4 v0, -0x1

    const-string v1, "unavailable token..."

    invoke-interface {p3, v0, v1}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 277
    :goto_e
    return-void

    .line 237
    :cond_f
    new-instance v2, Lcom/qbao/core/c/f;

    invoke-direct {v2}, Lcom/qbao/core/c/f;-><init>()V

    .line 238
    const-string v0, "key"

    sget-object v1, Lcom/qbao/sdk/a/a;->cW:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "appCode"

    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qbao/sdk/a/e;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "authToken"

    sget-object v1, Lcom/qbao/sdk/a/a;->cT:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/qbao/sdk/a/a$5;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/qbao/sdk/a/a$5;-><init>(Lcom/qbao/sdk/a/a;Lcom/qbao/core/c/f;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 276
    invoke-virtual {v0}, Lcom/qbao/sdk/b/c;->y()V

    goto :goto_e
.end method


# virtual methods
.method public P(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_logged_in_username"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qbao/sdk/e/a;->fw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/qbao/sdk/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/qbao/sdk/e/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1c
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_logged_in_password"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qbao/sdk/e/a;->fw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/qbao/sdk/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/qbao/sdk/e/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_1c
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/qbao/sdk/a/a;->cU:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 367
    iput-object p1, p0, Lcom/qbao/sdk/a/a;->cV:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 4

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/qbao/sdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 76
    return-void
.end method

.method public aa()Ljava/lang/String;
    .registers 3

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_logged_in_password"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qbao/sdk/e/a;->fw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/qbao/sdk/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/qbao/sdk/e/b;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ab()V
    .registers 3

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_logged_in_password"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qbao/sdk/e/a;->fw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/qbao/sdk/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/qbao/sdk/e/b;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public ac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/qbao/sdk/a/a;->cU:Ljava/lang/String;

    return-object v0
.end method

.method public ad()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/qbao/sdk/a/a;->cV:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 5

    .prologue
    .line 156
    new-instance v0, Lcom/qbao/sdk/a/a$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qbao/sdk/a/a$3;-><init>(Lcom/qbao/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/qbao/sdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 174
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 10

    .prologue
    const/4 v4, -0x1

    .line 180
    new-instance v2, Lcom/qbao/core/c/f;

    invoke-direct {v2}, Lcom/qbao/core/c/f;-><init>()V

    .line 181
    const-string v0, "loginName"

    invoke-virtual {v2, v0, p1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, ""

    .line 184
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qbao/sdk/a/a;->cS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDUn+hM/Ae5ptuusz4aFSaPQtZPucsA4wVoyoA+8hLMTHuEWcdjdKewcf9bFH2krwtpo6CG0CGFBj9ivf8nGzeCc6t68fM5InV0oOxUujXBXhXpEvvDu9F+Yadnv6lx8M0raWRx8uhKUhdzPKEbiaiMJPIh4IdLgzxOYlskYr9DwIDAQAB"

    invoke-static {v0, v3}, Lcom/qbao/core/util/i;->i([BLjava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_37

    move-result-object v0

    .line 185
    :try_start_2a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 186
    const/4 v1, -0x1

    const-string v3, ""

    invoke-interface {p3, v1, v3}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_65

    .line 224
    :goto_36
    return-void

    .line 189
    :catch_37
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 190
    :goto_3b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const-string v1, ""

    invoke-interface {p3, v4, v1}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 193
    :cond_43
    const-string v1, "password"

    invoke-virtual {v2, v1, v0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "appCode"

    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qbao/sdk/a/e;->ar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "accessType"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/qbao/sdk/a/a$4;

    invoke-direct {v0, p0, v2, p3}, Lcom/qbao/sdk/a/a$4;-><init>(Lcom/qbao/sdk/a/a;Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V

    .line 223
    invoke-virtual {v0}, Lcom/qbao/sdk/b/c;->y()V

    goto :goto_36

    .line 189
    :catch_65
    move-exception v1

    goto :goto_3b
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_logged_in_username"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qbao/sdk/e/a;->fw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/qbao/sdk/a/a;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/qbao/sdk/e/b;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/qbao/sdk/a/a;->Z()V

    .line 62
    return-void
.end method
