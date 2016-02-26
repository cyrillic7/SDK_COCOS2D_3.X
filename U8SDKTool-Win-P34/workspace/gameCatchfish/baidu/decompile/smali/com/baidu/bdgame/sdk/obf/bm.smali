.class public Lcom/baidu/bdgame/sdk/obf/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x57ea5

.field public static final b:I = 0x57ea5


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jg;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 84
    if-nez v1, :cond_c

    .line 91
    :cond_b
    :goto_b
    return-object v0

    .line 87
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v2

    if-nez v2, :cond_b

    .line 91
    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jg;->a(Lcom/baidu/bdgame/sdk/obf/ai;)Lcom/baidu/bdgame/sdk/obf/jg;

    move-result-object v0

    goto :goto_b
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
    .line 101
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cu;-><init>()V

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    .line 103
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cu;-><init>()V

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 113
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 931
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 932
    if-nez v1, :cond_c

    .line 947
    :cond_b
    :goto_b
    return v0

    .line 935
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 938
    invoke-static {p0, p2, p1, p6}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/ik;

    move-result-object v0

    .line 941
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 942
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 943
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 945
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 946
    invoke-static {p7}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 947
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1097
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1098
    if-nez v1, :cond_c

    .line 1110
    :cond_b
    :goto_b
    return v0

    .line 1101
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1104
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-static {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ip;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ip;

    move-result-object v0

    .line 1108
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1109
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1110
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1060
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1061
    if-nez v1, :cond_c

    .line 1080
    :cond_b
    :goto_b
    return v0

    .line 1064
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1067
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p3

    move-object v5, p4

    .line 1070
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ih;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ih;

    move-result-object v0

    .line 1074
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/ih;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 1075
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/ih;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 1076
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ih;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 1078
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1079
    invoke-static {p8}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1080
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gs;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 510
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 511
    if-nez v1, :cond_c

    .line 523
    :cond_b
    :goto_b
    return v0

    .line 514
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 517
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/gr;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/gr;

    move-result-object v0

    .line 518
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/gr;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 519
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/gr;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 520
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/gr;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 521
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 522
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 523
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fd;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/il;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 620
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 621
    if-nez v1, :cond_c

    .line 635
    :cond_b
    :goto_b
    return v0

    .line 624
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 627
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/io;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/io;

    move-result-object v0

    .line 628
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/io;->a(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/io;->b(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/io;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 631
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/io;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 632
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/io;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 633
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 634
    invoke-static {p8}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 635
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 339
    if-nez v1, :cond_c

    .line 353
    :cond_b
    :goto_b
    return v0

    .line 342
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 346
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 348
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/he;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 350
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 351
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 352
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 353
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 897
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 898
    if-nez v1, :cond_c

    .line 908
    :cond_b
    :goto_b
    return v0

    .line 901
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 904
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/in;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/in;

    move-result-object v0

    .line 906
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 907
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 908
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 981
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 982
    if-nez v0, :cond_c

    .line 983
    const/4 v0, 0x0

    .line 997
    :goto_b
    return v0

    .line 985
    :cond_c
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 986
    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-object/from16 v6, p9

    .line 988
    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/if;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/if;

    move-result-object v0

    .line 991
    invoke-virtual {v0, p8}, Lcom/baidu/bdgame/sdk/obf/if;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 992
    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/if;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 993
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/if;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 995
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 996
    invoke-static/range {p10 .. p10}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 997
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1016
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1017
    if-nez v1, :cond_c

    .line 1030
    :cond_b
    :goto_b
    return v0

    .line 1020
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1023
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-static {p0, p2, p1, v0}, Lcom/baidu/bdgame/sdk/obf/ii;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ii;

    move-result-object v0

    .line 1028
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1029
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1030
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ie;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1127
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1128
    if-nez v1, :cond_c

    .line 1143
    :cond_b
    :goto_b
    return v0

    .line 1131
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1136
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 1138
    invoke-static {p0, p3}, Lcom/baidu/bdgame/sdk/obf/id;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/id;

    move-result-object v0

    .line 1139
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/id;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 1140
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/id;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 1141
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1142
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1143
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
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

    .line 206
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 207
    if-nez v1, :cond_c

    .line 217
    :cond_b
    :goto_b
    return v0

    .line 210
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 213
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/hp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hp;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 216
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 217
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ha;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 796
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 797
    if-nez v1, :cond_c

    .line 809
    :cond_b
    :goto_b
    return v0

    .line 800
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 803
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v1

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/hb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hb;

    move-result-object v0

    .line 807
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 808
    invoke-virtual {v1, v0, p5}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 809
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cu;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cu;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/cu;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 123
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1191
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1192
    if-nez v1, :cond_c

    .line 1207
    :cond_b
    :goto_b
    return v0

    .line 1195
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1198
    invoke-static {p0, p2, p1, p6}, Lcom/baidu/bdgame/sdk/obf/ik;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/ik;

    move-result-object v0

    .line 1201
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 1202
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 1203
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 1205
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1206
    invoke-static {p7}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1207
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1357
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1358
    if-nez v1, :cond_c

    .line 1370
    :cond_b
    :goto_b
    return v0

    .line 1361
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1364
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 1367
    invoke-static {p0, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ip;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ij;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ip;

    move-result-object v0

    .line 1368
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1369
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1370
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1320
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1321
    if-nez v1, :cond_c

    .line 1340
    :cond_b
    :goto_b
    return v0

    .line 1324
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1327
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    move-object v3, p3

    move-object v5, p4

    .line 1330
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/ih;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ih;

    move-result-object v0

    .line 1334
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/ih;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 1335
    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/ih;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 1336
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ih;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 1338
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1339
    invoke-static {p8}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1340
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hn;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 545
    if-nez v1, :cond_c

    .line 557
    :cond_b
    :goto_b
    return v0

    .line 548
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 551
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/hm;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/hm;

    move-result-object v0

    .line 552
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/hm;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 553
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/hm;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 554
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/hm;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 555
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 556
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 557
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/em;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/il;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 695
    if-nez v1, :cond_c

    .line 711
    :cond_b
    :goto_b
    return v0

    .line 698
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 701
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/im;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/im;

    move-result-object v0

    .line 702
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/im;->a(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/im;->b(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/im;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 706
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/im;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 707
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/im;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 709
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 710
    invoke-static {p8}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 711
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 375
    if-nez v1, :cond_c

    .line 387
    :cond_b
    :goto_b
    return v0

    .line 378
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 382
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/he;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 384
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 385
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 386
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 387
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1157
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1158
    if-nez v1, :cond_c

    .line 1168
    :cond_b
    :goto_b
    return v0

    .line 1161
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1164
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 1165
    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/in;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/in;

    move-result-object v0

    .line 1166
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1167
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1168
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1241
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 1242
    if-nez v0, :cond_c

    .line 1243
    const/4 v0, 0x0

    .line 1257
    :goto_b
    return v0

    .line 1245
    :cond_c
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1246
    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    move-object/from16 v6, p9

    .line 1248
    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/if;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/if;

    move-result-object v0

    .line 1251
    invoke-virtual {v0, p8}, Lcom/baidu/bdgame/sdk/obf/if;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 1252
    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/if;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 1253
    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/if;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 1255
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1256
    invoke-static/range {p10 .. p10}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1257
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1276
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 1277
    if-nez v1, :cond_c

    .line 1290
    :cond_b
    :goto_b
    return v0

    .line 1280
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1283
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 1285
    invoke-static {p0, p2, p1, v0}, Lcom/baidu/bdgame/sdk/obf/ii;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ii;

    move-result-object v0

    .line 1288
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 1289
    invoke-static {p4}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 1290
    const/4 v0, 0x1

    goto :goto_b
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
    const/4 v0, 0x0

    .line 228
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 229
    if-nez v1, :cond_c

    .line 239
    :cond_b
    :goto_b
    return v0

    .line 232
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 235
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/hp;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hp;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 238
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 239
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hi;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 825
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 826
    if-nez v1, :cond_c

    .line 838
    :cond_b
    :goto_b
    return v0

    .line 829
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 832
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 833
    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/hj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/baidu/bdgame/sdk/obf/hj;

    move-result-object v0

    .line 836
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 837
    invoke-virtual {v1, v0, p5}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 838
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hy;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 577
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 578
    if-nez v1, :cond_c

    .line 590
    :cond_b
    :goto_b
    return v0

    .line 581
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 584
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/hx;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/hx;

    move-result-object v0

    .line 585
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/hx;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 586
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/hx;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 587
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/hx;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 588
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 589
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 590
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 413
    if-nez v1, :cond_c

    .line 427
    :cond_b
    :goto_b
    return v0

    .line 416
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 420
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 422
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/he;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;

    move-result-object v0

    .line 423
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 424
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 425
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 426
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 427
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hr;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 132
    if-nez v1, :cond_c

    .line 142
    :cond_b
    :goto_b
    return v0

    .line 135
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 138
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hq;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hq;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 141
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 142
    const/4 v0, 0x1

    goto :goto_b
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
    const/4 v0, 0x0

    .line 255
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 256
    if-nez v1, :cond_c

    .line 266
    :cond_b
    :goto_b
    return v0

    .line 259
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 262
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/hp;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hp;

    move-result-object v0

    .line 264
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 265
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 266
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gw;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 657
    if-nez v1, :cond_c

    .line 669
    :cond_b
    :goto_b
    return v0

    .line 660
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 663
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/gv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/gv;

    move-result-object v0

    .line 664
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/gv;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 665
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/gv;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 666
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/gv;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 667
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 668
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 669
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 474
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 475
    if-nez v1, :cond_c

    .line 489
    :cond_b
    :goto_b
    return v0

    .line 478
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 482
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 484
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/he;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;

    move-result-object v0

    .line 485
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 486
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 487
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 488
    invoke-static {p5}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 489
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 153
    if-nez v1, :cond_c

    .line 163
    :cond_b
    :goto_b
    return v0

    .line 156
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 159
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hu;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hu;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 162
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 163
    const/4 v0, 0x1

    goto :goto_b
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
            "Lcom/baidu/bdgame/sdk/obf/ho;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 849
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 850
    if-nez v1, :cond_c

    .line 860
    :cond_b
    :goto_b
    return v0

    .line 853
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 856
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 857
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/ht;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ht;

    move-result-object v0

    .line 858
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 859
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 860
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ib;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 733
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 734
    if-nez v1, :cond_c

    .line 747
    :cond_b
    :goto_b
    return v0

    .line 737
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 740
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/ia;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/ia;

    move-result-object v0

    .line 741
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/ia;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 742
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ia;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 743
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ia;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 745
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 746
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 747
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gx;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 178
    if-nez v1, :cond_c

    .line 195
    :cond_b
    :goto_b
    return v0

    .line 181
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 184
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hs;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hs;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 187
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/bm$1;

    invoke-direct {v2, p1}, Lcom/baidu/bdgame/sdk/obf/bm$1;-><init>(Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 195
    const/4 v0, 0x1

    goto :goto_b
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
            "Lcom/baidu/bdgame/sdk/obf/ho;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 871
    if-nez v1, :cond_c

    .line 881
    :cond_b
    :goto_b
    return v0

    .line 874
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 877
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 878
    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/ht;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ht;

    move-result-object v0

    .line 879
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 880
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 881
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/iz;",
            "Lcom/baidu/bdgame/sdk/obf/je;",
            "Lcom/baidu/bdgame/sdk/obf/iy;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fk;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 767
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 768
    if-nez v1, :cond_c

    .line 780
    :cond_b
    :goto_b
    return v0

    .line 771
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 774
    invoke-static {p0, p1, p5}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/fj;

    move-result-object v0

    .line 775
    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 776
    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 777
    invoke-virtual {v0, p2}, Lcom/baidu/bdgame/sdk/obf/fj;->a(Lcom/baidu/bdgame/sdk/obf/iz;)V

    .line 778
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 779
    invoke-static {p6}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 780
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/iw;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 277
    if-nez v1, :cond_c

    .line 295
    :cond_b
    :goto_b
    return v0

    .line 280
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 283
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hs;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hs;

    move-result-object v0

    .line 285
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 286
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/bm$2;

    invoke-direct {v2, p1}, Lcom/baidu/bdgame/sdk/obf/bm$2;-><init>(Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 295
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hd;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 306
    if-nez v1, :cond_c

    .line 323
    :cond_b
    :goto_b
    return v0

    .line 309
    :cond_c
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    if-nez v1, :cond_b

    .line 312
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hs;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hs;

    move-result-object v0

    .line 314
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 315
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/bm$3;

    invoke-direct {v2, p1}, Lcom/baidu/bdgame/sdk/obf/bm$3;-><init>(Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 323
    const/4 v0, 0x1

    goto :goto_b
.end method
