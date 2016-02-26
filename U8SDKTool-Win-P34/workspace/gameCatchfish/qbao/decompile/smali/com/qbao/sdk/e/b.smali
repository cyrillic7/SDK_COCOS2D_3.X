.class public Lcom/qbao/sdk/e/b;
.super Ljava/lang/Object;
.source "DataStore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DataStore"

.field private static fM:Lcom/qbao/core/util/n; = null

.field private static fN:Lcom/qbao/core/util/n; = null

.field private static final fO:Ljava/lang/String; = "qianbao888"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 32
    const-string v1, "DataStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getInternalData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    if-eqz p0, :cond_27

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 34
    :cond_27
    const-string v0, ""

    .line 52
    :goto_29
    return-object v0

    .line 37
    :cond_2a
    if-eqz p2, :cond_73

    .line 38
    new-instance v1, Lcom/qbao/core/util/n;

    invoke-direct {v1, p0}, Lcom/qbao/core/util/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/qbao/core/util/n;->V()Lcom/qbao/core/util/n$b;

    move-result-object v1

    move-object v2, v1

    .line 43
    :goto_36
    :try_start_36
    invoke-static {p1}, Lcom/qbao/sdk/e/b;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/qbao/core/util/n$b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v4, "DataStore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getInternalData="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",key|result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string v0, ""
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6f} :catch_82
    .catchall {:try_start_36 .. :try_end_6f} :catchall_8a

    .line 50
    :goto_6f
    invoke-virtual {v2}, Lcom/qbao/core/util/n$b;->complete()V

    goto :goto_29

    .line 40
    :cond_73
    invoke-static {p0}, Lcom/qbao/sdk/e/b;->w(Landroid/content/Context;)Lcom/qbao/core/util/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qbao/core/util/n;->V()Lcom/qbao/core/util/n$b;

    move-result-object v1

    move-object v2, v1

    goto :goto_36

    .line 46
    :cond_7d
    :try_start_7d
    invoke-static {v3}, Lcom/qbao/sdk/e/b;->aj(Ljava/lang/String;)Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_82
    .catchall {:try_start_7d .. :try_end_80} :catchall_8a

    move-result-object v0

    goto :goto_6f

    .line 47
    :catch_82
    move-exception v1

    .line 48
    :try_start_83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_8a

    .line 50
    invoke-virtual {v2}, Lcom/qbao/core/util/n$b;->complete()V

    goto :goto_29

    .line 49
    :catchall_8a
    move-exception v0

    .line 50
    invoke-virtual {v2}, Lcom/qbao/core/util/n$b;->complete()V

    .line 51
    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 61
    :try_start_0
    const-string v0, "DataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setInternalData.context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",k|v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz p0, :cond_36

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 74
    :cond_36
    :goto_36
    return-void

    .line 65
    :cond_37
    invoke-static {p1}, Lcom/qbao/sdk/e/b;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {p2}, Lcom/qbao/sdk/e/b;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "DataStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setInternalData.context="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",key|value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/qbao/sdk/e/b;->w(Landroid/content/Context;)Lcom/qbao/core/util/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qbao/core/util/n;->U()Lcom/qbao/core/util/n$a;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v0, v1}, Lcom/qbao/core/util/n$a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Lcom/qbao/core/util/n$a;->commit()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_75} :catch_76

    goto :goto_36

    .line 71
    :catch_76
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method private static ai(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    const-string v0, "qianbao888"

    invoke-static {p0, v0}, Lcom/qbao/core/util/c;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aj(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    const-string v0, "qianbao888"

    invoke-static {p0, v0}, Lcom/qbao/core/util/c;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 101
    const-string v1, "DataStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getExternalData.k="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/qbao/core/util/f;->P()Z

    move-result v1

    if-nez v1, :cond_20

    .line 103
    invoke-static {p0, p1, p2}, Lcom/qbao/sdk/e/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_1f
    return-object v0

    .line 106
    :cond_20
    if-eqz p2, :cond_5d

    .line 107
    new-instance v1, Lcom/qbao/core/util/n;

    invoke-direct {v1}, Lcom/qbao/core/util/n;-><init>()V

    invoke-virtual {v1}, Lcom/qbao/core/util/n;->V()Lcom/qbao/core/util/n$b;

    move-result-object v1

    move-object v2, v1

    .line 112
    :goto_2c
    :try_start_2c
    invoke-static {p1}, Lcom/qbao/sdk/e/b;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/qbao/core/util/n$b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v3, "DataStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getExternalData.key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_56} :catch_6c
    .catchall {:try_start_2c .. :try_end_56} :catchall_74

    move-result v3

    if-eqz v3, :cond_67

    .line 119
    :goto_59
    invoke-virtual {v2}, Lcom/qbao/core/util/n$b;->complete()V

    goto :goto_1f

    .line 109
    :cond_5d
    invoke-static {}, Lcom/qbao/sdk/e/b;->bd()Lcom/qbao/core/util/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qbao/core/util/n;->V()Lcom/qbao/core/util/n$b;

    move-result-object v1

    move-object v2, v1

    goto :goto_2c

    .line 115
    :cond_67
    :try_start_67
    invoke-static {v1}, Lcom/qbao/sdk/e/b;->aj(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6c
    .catchall {:try_start_67 .. :try_end_6a} :catchall_74

    move-result-object v0

    goto :goto_59

    .line 116
    :catch_6c
    move-exception v1

    .line 117
    :try_start_6d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_74

    .line 119
    invoke-virtual {v2}, Lcom/qbao/core/util/n$b;->complete()V

    goto :goto_1f

    .line 118
    :catchall_74
    move-exception v0

    .line 119
    invoke-virtual {v2}, Lcom/qbao/core/util/n$b;->complete()V

    .line 120
    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 129
    const-string v0, "DataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setExternalData.k|v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 147
    :cond_2a
    :goto_2a
    return-void

    .line 133
    :cond_2b
    invoke-static {}, Lcom/qbao/core/util/f;->P()Z

    move-result v0

    if-nez v0, :cond_35

    .line 134
    invoke-static {p0, p1, p2}, Lcom/qbao/sdk/e/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 138
    :cond_35
    :try_start_35
    invoke-static {}, Lcom/qbao/sdk/e/b;->bd()Lcom/qbao/core/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/core/util/n;->U()Lcom/qbao/core/util/n$a;

    move-result-object v0

    .line 139
    invoke-static {p1}, Lcom/qbao/sdk/e/b;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {p2}, Lcom/qbao/sdk/e/b;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string v3, "DataStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setExternalData.key|value="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/util/n$a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lcom/qbao/core/util/n$a;->commit()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_69} :catch_6a

    goto :goto_2a

    .line 144
    :catch_6a
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public static bd()Lcom/qbao/core/util/n;
    .registers 3

    .prologue
    .line 93
    sget-object v0, Lcom/qbao/sdk/e/b;->fN:Lcom/qbao/core/util/n;

    if-nez v0, :cond_b

    .line 94
    new-instance v0, Lcom/qbao/core/util/n;

    invoke-direct {v0}, Lcom/qbao/core/util/n;-><init>()V

    sput-object v0, Lcom/qbao/sdk/e/b;->fN:Lcom/qbao/core/util/n;

    .line 96
    :cond_b
    const-string v0, "DataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getExternalPrefs.store="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/qbao/sdk/e/b;->fM:Lcom/qbao/core/util/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/qbao/sdk/e/b;->fN:Lcom/qbao/core/util/n;

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qbao/sdk/e/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 78
    :try_start_0
    const-string v0, "DataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeInternalData.context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",k"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz p0, :cond_26

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 90
    :cond_26
    :goto_26
    return-void

    .line 82
    :cond_27
    invoke-static {p1}, Lcom/qbao/sdk/e/b;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "DataStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeInternalData.context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lcom/qbao/sdk/e/b;->w(Landroid/content/Context;)Lcom/qbao/core/util/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qbao/core/util/n;->U()Lcom/qbao/core/util/n$a;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Lcom/qbao/core/util/n$a;->remove(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Lcom/qbao/core/util/n$a;->commit()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_26

    .line 87
    :catch_58
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qbao/sdk/e/b;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 150
    const-string v0, "DataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setExternalData.k="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 167
    :goto_1a
    return-void

    .line 154
    :cond_1b
    invoke-static {}, Lcom/qbao/core/util/f;->P()Z

    move-result v0

    if-nez v0, :cond_25

    .line 155
    invoke-static {p0, p1}, Lcom/qbao/sdk/e/b;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 159
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/qbao/sdk/e/b;->bd()Lcom/qbao/core/util/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/core/util/n;->U()Lcom/qbao/core/util/n$a;

    move-result-object v0

    .line 160
    invoke-static {p1}, Lcom/qbao/sdk/e/b;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "DataStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setExternalData.key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Lcom/qbao/core/util/n$a;->remove(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/qbao/core/util/n$a;->commit()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4b} :catch_4c

    goto :goto_1a

    .line 164
    :catch_4c
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public static release()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/qbao/sdk/e/b;->fM:Lcom/qbao/core/util/n;

    .line 27
    sput-object v0, Lcom/qbao/sdk/e/b;->fN:Lcom/qbao/core/util/n;

    .line 28
    return-void
.end method

.method public static w(Landroid/content/Context;)Lcom/qbao/core/util/n;
    .registers 4

    .prologue
    .line 18
    sget-object v0, Lcom/qbao/sdk/e/b;->fM:Lcom/qbao/core/util/n;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/qbao/core/util/n;

    invoke-direct {v0, p0}, Lcom/qbao/core/util/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qbao/sdk/e/b;->fM:Lcom/qbao/core/util/n;

    .line 21
    :cond_b
    const-string v0, "DataStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getInternalPrefs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", store="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qbao/sdk/e/b;->fM:Lcom/qbao/core/util/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/qbao/sdk/e/b;->fM:Lcom/qbao/core/util/n;

    return-object v0
.end method
