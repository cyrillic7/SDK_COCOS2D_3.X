.class public Lcom/baidu/bdgame/sdk/obf/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "BDPlatformType"

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static d:I = 0x0

.field public static e:I = 0x0

.field public static final f:I = 0x7d64

.field public static final g:I = 0x7d65

.field public static final h:I = 0xa474

.field public static final i:I = 0xa475

.field public static final j:I = 0x814c

.field public static final k:I = 0x8534

.field public static final l:I = 0x8535

.field public static final m:I = 0xa08c

.field public static final n:I = 0xa08d

.field public static final o:I = 0x891c

.field public static final p:I = 0x8ca5

.field public static final q:I = 0x8d04

.field public static final r:Ljava/lang/String; = "1"

.field public static final s:Ljava/lang/String; = "3"

.field public static final t:Ljava/lang/String; = "4"

.field public static final u:Ljava/lang/String; = "5"

.field public static final v:I = 0x90ef

.field public static final w:I = 0x90ec

.field public static final x:I = 0x90ed

.field public static final y:I = 0x1

.field public static final z:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/baidu/bdgame/sdk/obf/bl;->d:I

    .line 61
    const/4 v0, 0x2

    sput v0, Lcom/baidu/bdgame/sdk/obf/bl;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 82
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lg;->a(Landroid/content/Context;)I

    move-result v0

    .line 83
    packed-switch v0, :pswitch_data_c

    .line 89
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;)I

    move-result v0

    .line 92
    :pswitch_b
    return v0

    .line 83
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ag;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/v;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/v;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 266
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 267
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 268
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bi;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/bi;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 72
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 73
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/at;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ae;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p2}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 408
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 409
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 410
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/s;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/s;)Lcom/baidu/bdgame/sdk/obf/t;

    move-result-object v0

    .line 386
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 387
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 388
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 389
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/x;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 163
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 164
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 165
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/an;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/an;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p2}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 178
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 179
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 180
    return-object v0
.end method

.method public static a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cu;-><init>()V

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/cu;->b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    .line 140
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 502
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 506
    :goto_6
    return-void

    .line 505
    :cond_7
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V
    .registers 5

    .prologue
    .line 1005
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bh;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$7;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/bl$7;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bh;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1013
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bh;->a()V

    .line 1014
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bh;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$2;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bh;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 521
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bh;->a()V

    .line 522
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 5

    .prologue
    .line 469
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bh;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/bl$1;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bh;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 477
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bh;->a()V

    .line 478
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 680
    const/4 v0, 0x0

    .line 685
    :goto_f
    return v0

    .line 682
    :cond_10
    invoke-static {p0, v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/z;

    move-result-object v0

    .line 683
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 684
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 685
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 753
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v1

    .line 754
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 755
    const/4 v0, 0x0

    .line 760
    :goto_f
    return v0

    :cond_10
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 757
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/z;

    move-result-object v0

    .line 758
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 759
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 760
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 97
    const-string v0, "BDPlatformType"

    sget v1, Lcom/baidu/bdgame/sdk/obf/bl;->d:I

    invoke-static {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/lb;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 98
    packed-switch v0, :pswitch_data_16

    .line 104
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "Manifest: invalid BDPlatformType value, use default"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget v0, Lcom/baidu/bdgame/sdk/obf/bl;->d:I

    .line 108
    :pswitch_14
    return v0

    .line 98
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ag;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 353
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ac;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ag;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ac;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 355
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 356
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 357
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/u;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 209
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 210
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 211
    return-object v0
.end method

.method public static b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bh;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$4;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/bl$4;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bh;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 554
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bh;->a()V

    .line 555
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bh;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$3;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bh;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 537
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bh;->a()V

    .line 538
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 3

    .prologue
    .line 481
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 482
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 587
    const/4 v0, 0x0

    .line 592
    :goto_f
    return v0

    .line 589
    :cond_10
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/am;

    move-result-object v0

    .line 590
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 591
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 592
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 911
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 912
    if-nez v1, :cond_c

    .line 925
    :cond_b
    :goto_b
    return v0

    .line 915
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 918
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v1

    .line 919
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 922
    invoke-static {p0, v1, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/aa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aa;

    move-result-object v0

    .line 923
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 924
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 925
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 149
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/u;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/u;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 241
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 242
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 243
    return-object v0
.end method

.method public static c(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 962
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bh;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$5;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/bl$5;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bh;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 969
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bh;->a()V

    .line 970
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ao;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 623
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 625
    const/4 v0, 0x0

    .line 630
    :goto_f
    return v0

    .line 627
    :cond_10
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ap;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ap;

    move-result-object v0

    .line 628
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 629
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 630
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 640
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 642
    const/4 v0, 0x0

    .line 647
    :goto_f
    return v0

    .line 644
    :cond_10
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/av;

    move-result-object v0

    .line 645
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 646
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 647
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 938
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 939
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 949
    :cond_11
    :goto_11
    return v0

    .line 942
    :cond_12
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 946
    invoke-static {p0, v1, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/aa;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aa;

    move-result-object v0

    .line 947
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 948
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 949
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ab;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ab;

    move-result-object v0

    .line 296
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 297
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 298
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 299
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 450
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->c()Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ao;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 697
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 699
    const/4 v0, 0x0

    .line 704
    :goto_f
    return v0

    .line 701
    :cond_10
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ar;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ar;

    move-result-object v0

    .line 702
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 703
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 704
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 715
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 717
    const/4 v0, 0x0

    .line 722
    :goto_f
    return v0

    .line 719
    :cond_10
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/aw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aw;

    move-result-object v0

    .line 720
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 721
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 722
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ab;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ab;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 329
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 330
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 331
    return-object v0
.end method

.method public static e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 978
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cu;-><init>()V

    .line 979
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cu;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 980
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 460
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/as;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 862
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 863
    if-nez v1, :cond_c

    .line 876
    :cond_b
    :goto_b
    return v0

    .line 866
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 869
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v1

    .line 870
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 873
    invoke-static {p0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aq;

    move-result-object v0

    .line 874
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 875
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 876
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/bk;"
        }
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/au;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/au;

    move-result-object v0

    .line 438
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    invoke-direct {v1, p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 439
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 440
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 441
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/fx;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 566
    if-nez v1, :cond_c

    .line 573
    :cond_b
    :goto_b
    return-object v0

    .line 570
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v2

    if-nez v2, :cond_b

    .line 573
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fx;->a(Lcom/baidu/bdgame/sdk/obf/ai;)Lcom/baidu/bdgame/sdk/obf/fx;

    move-result-object v0

    goto :goto_b
.end method

.method public static f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bh;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bl$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/bl$6;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bh;-><init>(Ljava/util/concurrent/Callable;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1001
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bh;->a()V

    .line 1002
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 887
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 888
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 898
    :cond_11
    :goto_11
    return v0

    .line 891
    :cond_12
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 895
    invoke-static {p0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/aq;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aq;

    move-result-object v0

    .line 896
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 897
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 898
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static g(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/mh;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 834
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 835
    if-nez v1, :cond_c

    .line 842
    :cond_b
    :goto_b
    return-object v0

    .line 838
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v2

    if-nez v2, :cond_b

    .line 842
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/mh;->a(Lcom/baidu/bdgame/sdk/obf/ai;)Lcom/baidu/bdgame/sdk/obf/mh;

    move-result-object v0

    goto :goto_b
.end method

.method public static g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cu;-><init>()V

    .line 1023
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1024
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 605
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 607
    const/4 v0, 0x0

    .line 612
    :goto_f
    return v0

    .line 609
    :cond_10
    invoke-static {p0, v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/z;

    move-result-object v0

    .line 610
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 611
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 612
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 846
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 847
    if-nez v0, :cond_c

    .line 848
    const/4 v0, 0x0

    .line 851
    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->f()Z

    move-result v0

    goto :goto_b
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 659
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 661
    const/4 v0, 0x0

    .line 666
    :goto_f
    return v0

    .line 663
    :cond_10
    invoke-static {p0, v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/am;

    move-result-object v0

    .line 664
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 665
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 666
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static synthetic i(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 734
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 736
    const/4 v0, 0x0

    .line 741
    :goto_f
    return v0

    .line 738
    :cond_10
    invoke-static {p0, v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/am;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/am;

    move-result-object v0

    .line 739
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 740
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 741
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private static j(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 983
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 984
    if-nez v0, :cond_b

    .line 990
    :goto_a
    return-void

    .line 988
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/baidu/bdgame/sdk/obf/as;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)Z

    goto :goto_a
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 817
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 818
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 819
    const/4 v0, 0x0

    .line 824
    :goto_f
    return v0

    .line 821
    :cond_10
    invoke-static {p0, v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ak;

    move-result-object v0

    .line 822
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 823
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 824
    const/4 v0, 0x1

    goto :goto_f
.end method
