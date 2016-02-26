.class final Lcom/tencent/beacon/event/p$4;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/event/p;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/event/p;)V
    .registers 2

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/tencent/beacon/event/p$4;->a:Lcom/tencent/beacon/event/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x400

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 1042
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    .line 1043
    if-nez v0, :cond_14

    .line 1044
    const-string v0, " model even common info == null?,return"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    :goto_13
    return-void

    .line 1047
    :cond_14
    iget-object v0, p0, Lcom/tencent/beacon/event/p$4;->a:Lcom/tencent/beacon/event/p;

    iget-object v0, v0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/event/n;->a(Landroid/content/Context;)Lcom/tencent/beacon/event/n;

    move-result-object v0

    .line 1048
    if-nez v0, :cond_26

    .line 1049
    const-string v0, " UADeviceInfo == null?,return"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    .line 1052
    :cond_26
    iget-object v4, p0, Lcom/tencent/beacon/event/p$4;->a:Lcom/tencent/beacon/event/p;

    iget-object v4, v4, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    move-result-object v4

    .line 1053
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1054
    const-string v5, "A9"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->k()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string v5, "A10"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->b()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string v5, "A11"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->h()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string v5, "A12"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->i()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const-string v5, "A13"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->j()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    const-string v5, "A14"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->f()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    const-string v5, "A15"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->g()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string v5, "A16"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->d()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string v5, "A17"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string v5, "A18"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    const-string v5, "A20"

    iget-object v7, p0, Lcom/tencent/beacon/event/p$4;->a:Lcom/tencent/beacon/event/p;

    iget-object v7, v7, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/beacon/a/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const-string v5, "A22"

    iget-object v7, p0, Lcom/tencent/beacon/event/p$4;->a:Lcom/tencent/beacon/event/p;

    iget-object v7, v7, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/beacon/event/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string v5, "A30"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/beacon/a/g;->i()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "m"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string v4, "A33"

    iget-object v5, p0, Lcom/tencent/beacon/event/p$4;->a:Lcom/tencent/beacon/event/p;

    iget-object v5, v5, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/beacon/a/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    const-string v4, "A52"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->l()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string v4, "A53"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->m()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string v4, "A54"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->n()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string v4, "A55"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->o()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string v4, "A56"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->p()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const-string v4, "A57"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->q()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string v4, "A58"

    invoke-virtual {v0}, Lcom/tencent/beacon/event/n;->r()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string v4, "A59"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/beacon/event/p$4;->a:Lcom/tencent/beacon/event/p;

    iget-object v7, v0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    const-string v0, "0"

    invoke-static {v7}, Lcom/tencent/beacon/a/g;->i(Landroid/content/Context;)J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-lez v7, :cond_133

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v8, v12

    div-long/2addr v8, v12

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_133
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    const-string v0, "A69"

    iget-object v4, p0, Lcom/tencent/beacon/event/p$4;->a:Lcom/tencent/beacon/event/p;

    iget-object v4, v4, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/beacon/a/g;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-string v4, "A82"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v10

    const-string v5, "-c"

    aput-object v5, v0, v1

    const/4 v5, 0x2

    const-string v7, "getprop ro.build.fingerprint"

    aput-object v7, v0, v5

    invoke-static {v0}, Lcom/tencent/beacon/b/a;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_181

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_181

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_175
    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const-string v0, "rqd_model"

    move-wide v4, v2

    move v7, v1

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/p;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    goto/16 :goto_13

    .line 1077
    :cond_181
    const-string v0, ""

    goto :goto_175
.end method
