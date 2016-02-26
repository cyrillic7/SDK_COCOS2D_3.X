.class final Lcom/duoku/platform/g/d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/duoku/platform/g/d;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/g/d;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/d$a;)V
    .registers 3

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/duoku/platform/g/d$a;-><init>(Lcom/duoku/platform/g/d;)V

    return-void
.end method

.method private a(Lcom/duoku/platform/g/h;)V
    .registers 8

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 262
    if-eqz v3, :cond_48

    .line 265
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 267
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f;

    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/g/a;

    .line 269
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/g/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 271
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->b()Lcom/duoku/platform/h/a;

    move-result-object v4

    .line 273
    if-nez v4, :cond_49

    .line 276
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->a()I

    move-result v4

    .line 277
    invoke-virtual {v1}, Lcom/duoku/platform/g/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/duoku/platform/g/f;->a(IIILjava/lang/String;)V

    .line 294
    :goto_3d
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 297
    :cond_48
    return-void

    .line 283
    :cond_49
    invoke-virtual {v4}, Lcom/duoku/platform/h/a;->getErrorCode()I

    move-result v5

    .line 284
    if-nez v5, :cond_57

    .line 286
    invoke-virtual {v1}, Lcom/duoku/platform/g/a;->a()I

    move-result v1

    invoke-interface {v0, v1, v4, v2}, Lcom/duoku/platform/g/f;->a(ILcom/duoku/platform/h/a;I)V

    goto :goto_3d

    .line 291
    :cond_57
    invoke-virtual {v1}, Lcom/duoku/platform/g/a;->a()I

    move-result v1

    invoke-virtual {v4}, Lcom/duoku/platform/h/a;->getErrorString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v5, v4}, Lcom/duoku/platform/g/f;->a(IIILjava/lang/String;)V

    goto :goto_3d
.end method

.method static synthetic a()[I
    .registers 3

    .prologue
    .line 200
    sget-object v0, Lcom/duoku/platform/g/d$a;->b:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/g/h$a;->values()[Lcom/duoku/platform/g/h$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/duoku/platform/g/h$a;->f:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lcom/duoku/platform/g/h$a;->e:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/duoku/platform/g/h$a;->d:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lcom/duoku/platform/g/h$a;->c:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lcom/duoku/platform/g/h$a;->b:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lcom/duoku/platform/g/h$a;->a:Lcom/duoku/platform/g/h$a;

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lcom/duoku/platform/g/d$a;->b:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method private b(Lcom/duoku/platform/g/h;)V
    .registers 8

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v2

    .line 302
    iget-object v0, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v0, v2}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 304
    if-eqz v3, :cond_32

    .line 306
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f;

    .line 307
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/g/a;

    .line 309
    invoke-virtual {v1}, Lcom/duoku/platform/g/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/duoku/platform/g/f;->a(IIILjava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 314
    :cond_32
    return-void
.end method

.method private c(Lcom/duoku/platform/g/h;)V
    .registers 6

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v1

    .line 319
    iget-object v0, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v0, v1}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_22

    .line 323
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f;

    .line 324
    sget-object v3, Lcom/duoku/platform/g/f$a;->d:Lcom/duoku/platform/g/f$a;

    invoke-interface {v0, v3, v1}, Lcom/duoku/platform/g/f;->a(Lcom/duoku/platform/g/f$a;I)V

    .line 325
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 328
    :cond_22
    return-void
.end method

.method private d(Lcom/duoku/platform/g/h;)V
    .registers 9

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v6

    .line 333
    iget-object v0, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v0, v6}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_1d

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duoku/platform/g/f;

    .line 337
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->e()J

    move-result-wide v4

    invoke-interface/range {v1 .. v6}, Lcom/duoku/platform/g/f;->a(JJI)V

    .line 340
    :cond_1d
    return-void
.end method

.method private e(Lcom/duoku/platform/g/h;)V
    .registers 6

    .prologue
    .line 344
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v1

    .line 345
    iget-object v0, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v0, v1}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 347
    if-eqz v2, :cond_22

    .line 349
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f;

    .line 350
    sget-object v3, Lcom/duoku/platform/g/f$a;->c:Lcom/duoku/platform/g/f$a;

    invoke-interface {v0, v3, v1}, Lcom/duoku/platform/g/f;->a(Lcom/duoku/platform/g/f$a;I)V

    .line 351
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 354
    :cond_22
    return-void
.end method

.method private f(Lcom/duoku/platform/g/h;)V
    .registers 4

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/duoku/platform/g/h;->f()I

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_17

    .line 365
    iget-object v1, p0, Lcom/duoku/platform/g/d$a;->a:Lcom/duoku/platform/g/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/g/d;->a(Lcom/duoku/platform/g/d;Lcom/duoku/platform/g/a;)V

    .line 367
    :cond_17
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/duoku/platform/g/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 207
    if-eqz v0, :cond_23

    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/duoku/platform/g/h;

    .line 210
    invoke-virtual {v0}, Lcom/duoku/platform/g/h;->c()Lcom/duoku/platform/g/h$a;

    move-result-object v1

    .line 212
    invoke-static {}, Lcom/duoku/platform/g/d$a;->a()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/duoku/platform/g/h$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_3c

    .line 255
    :cond_23
    :goto_23
    return-void

    .line 216
    :pswitch_24
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->a(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 222
    :pswitch_28
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->b(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 228
    :pswitch_2c
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->d(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 234
    :pswitch_30
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->c(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 240
    :pswitch_34
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->e(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 246
    :pswitch_38
    invoke-direct {p0, v0}, Lcom/duoku/platform/g/d$a;->f(Lcom/duoku/platform/g/h;)V

    goto :goto_23

    .line 212
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_34
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method
