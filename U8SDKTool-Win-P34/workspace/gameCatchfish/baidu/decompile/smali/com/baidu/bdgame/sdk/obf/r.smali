.class public Lcom/baidu/bdgame/sdk/obf/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String; = "name"

.field private static final i:Ljava/lang/String; = "sign"

.field private static final j:Ljava/lang/String; = "t_p"

.field private static final k:Ljava/lang/String; = "sign_millis"

.field private static final l:Ljava/lang/String; = "uid"

.field private static final m:Ljava/lang/String; = "type"

.field private static final n:Ljava/lang/String; = "g"

.field private static final o:Ljava/lang/String; = "lname"

.field private static final p:Ljava/lang/String; = "bs"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/s;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Z

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->f:J

    return-void
.end method

.method public static a(Lcom/baidu/bdgame/sdk/obf/ai;J)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 8

    .prologue
    .line 130
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/r;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/r;-><init>()V

    .line 131
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/r;->a(J)V

    .line 133
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/r;->a(Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 134
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/r;->a(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/r;->b(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v1

    if-nez v1, :cond_40

    .line 140
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->a()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 143
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    .line 150
    :cond_40
    :goto_40
    return-object v0

    .line 146
    :cond_41
    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    goto :goto_40
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 174
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/r;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/r;-><init>()V

    .line 175
    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;)V

    .line 176
    const-string v2, "sign_millis"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/r;->a(J)V

    .line 177
    const-string v2, "g"

    invoke-virtual {p0, v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/r;->a(Z)V

    .line 179
    const-string v2, "lname"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/r;->b(Ljava/lang/String;)V

    .line 181
    const-string v2, "bs"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 184
    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {v1, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    .line 191
    :goto_43
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/s;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/s;-><init>()V

    .line 192
    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/r;->a(Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 194
    const-string v3, "sign"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 195
    const-string v3, "uid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;)V

    .line 197
    const-string v3, "type"

    invoke-virtual {p0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 198
    if-ne v3, v6, :cond_6e

    .line 210
    :cond_65
    :goto_65
    return-object v0

    .line 187
    :cond_66
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/r;->g()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/r;->a(Ljava/lang/String;J)V

    goto :goto_43

    .line 201
    :cond_6e
    if-nez v3, :cond_75

    .line 202
    invoke-virtual {v2, v7}, Lcom/baidu/bdgame/sdk/obf/s;->a(I)V

    :goto_73
    move-object v0, v1

    .line 210
    goto :goto_65

    .line 203
    :cond_75
    if-ne v3, v8, :cond_7b

    .line 204
    invoke-virtual {v2, v8}, Lcom/baidu/bdgame/sdk/obf/s;->a(I)V

    goto :goto_73

    .line 205
    :cond_7b
    if-ne v3, v9, :cond_65

    .line 206
    invoke-virtual {v2, v9}, Lcom/baidu/bdgame/sdk/obf/s;->a(I)V

    goto :goto_73
.end method

.method public static b(Lcom/baidu/bdgame/sdk/obf/r;)Lorg/json/JSONObject;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 216
    :try_start_9
    const-string v6, "name"

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/r;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_79

    const-string v5, ""

    :goto_15
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v5, "sign_millis"

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/r;->d:J

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 218
    const-string v5, "uid"

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v6}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v6, "sign"

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/s;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7c

    const-string v5, ""

    :goto_3a
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v5, "t_p"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 222
    const-string v5, "g"

    iget-boolean v6, p0, Lcom/baidu/bdgame/sdk/obf/r;->e:Z

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 223
    const-string v6, "lname"

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/r;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_83

    const-string v5, ""

    :goto_56
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v6, "bs"

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/r;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_86

    const-string v5, ""

    :goto_65
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v5

    .line 228
    if-nez v5, :cond_89

    .line 237
    :goto_72
    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v0, v1

    .line 243
    :cond_78
    :goto_78
    return-object v0

    .line 216
    :cond_79
    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/r;->b:Ljava/lang/String;

    goto :goto_15

    .line 219
    :cond_7c
    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/s;->c()Ljava/lang/String;

    move-result-object v5

    goto :goto_3a

    .line 223
    :cond_83
    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/r;->c:Ljava/lang/String;

    goto :goto_56

    .line 225
    :cond_86
    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/r;->g:Ljava/lang/String;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_88} :catch_91

    goto :goto_65

    .line 230
    :cond_89
    if-ne v5, v3, :cond_8d

    move v2, v3

    .line 231
    goto :goto_72

    .line 232
    :cond_8d
    if-ne v5, v4, :cond_78

    move v2, v4

    .line 233
    goto :goto_72

    .line 239
    :catch_91
    move-exception v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/s;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/r;->d:J

    .line 80
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/r;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 42
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/r;->g:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/baidu/bdgame/sdk/obf/r;->f:J

    .line 44
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/r;->e:Z

    .line 89
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/r;)Z
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/r;->c:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public c()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->f:J

    return-wide v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .registers 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->d:J

    return-wide v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->e:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->c:Ljava/lang/String;

    .line 111
    :goto_a
    return-object v0

    .line 108
    :cond_b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->b:Ljava/lang/String;

    goto :goto_a

    .line 111
    :cond_16
    const-string v0, ""

    goto :goto_a
.end method

.method public j()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 118
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_e
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Passport {account:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/r;->a:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/r;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
