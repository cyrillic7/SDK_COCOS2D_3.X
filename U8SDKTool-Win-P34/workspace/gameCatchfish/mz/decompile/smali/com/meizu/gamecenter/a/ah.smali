.class public final Lcom/meizu/gamecenter/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/meizu/b/a/a/a;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/meizu/gamecenter/a/ah;->a:Landroid/app/Activity;

    .line 32
    iput-object v0, p0, Lcom/meizu/gamecenter/a/ah;->e:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ah;->a:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lcom/meizu/gamecenter/a/ah;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "reply"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 149
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 150
    if-nez v3, :cond_54

    .line 151
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 153
    if-ne v3, v0, :cond_63

    .line 154
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 155
    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v4, "com.meizu.gamecenter.service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 158
    const-string v3, "existsUpdate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 159
    const-string v4, "needUpdate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 160
    if-nez v3, :cond_44

    if-eqz v4, :cond_4d

    .line 161
    :cond_44
    const-string v3, "updateUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/gamecenter/a/ah;->e:Ljava/lang/String;

    .line 180
    :goto_4c
    return v0

    .line 165
    :cond_4d
    const-string v0, "GameCenterUpdateManager"

    const-string v2, "no update"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    move v0, v1

    .line 180
    goto :goto_4c

    .line 168
    :cond_56
    const-string v0, "GameCenterUpdateManager"

    const-string v2, "packageName is equal com.meizu.gamecenter.service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_6b

    goto :goto_54

    .line 175
    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_54

    .line 171
    :cond_63
    :try_start_63
    const-string v0, "GameCenterUpdateManager"

    const-string v2, "array size is not 1"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_6a} :catch_5e
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6a} :catch_6b

    goto :goto_54

    .line 176
    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method private static c()Ljava/lang/String;
    .registers 6

    .prologue
    .line 100
    :try_start_0
    const-string v0, "com.meizu.gamecenter.service"

    .line 101
    const-string v1, "0.0.0"

    .line 102
    const-string v2, "All"

    .line 103
    const-string v3, "All"

    .line 104
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const-string v5, "pn"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v0, "cv"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v0, "p"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "fw"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 111
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result-object v0

    .line 116
    :goto_2d
    return-object v0

    .line 113
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const-string v0, ""

    goto :goto_2d
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/ah;->d:Z

    .line 46
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ah;->b:Lcom/meizu/b/a/a/a;

    if-eqz v0, :cond_c

    .line 47
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ah;->b:Lcom/meizu/b/a/a/a;

    invoke-virtual {v0}, Lcom/meizu/b/a/a/a;->a()V

    .line 49
    :cond_c
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 7

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ah;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/b/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    const-string v2, "com.meizu.gamecenter.service"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "2635881a7ab0593849fe89e685fc56cd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/b/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v3, Landroid/util/Pair;

    const-string v4, "apps"

    iget-object v5, p0, Lcom/meizu/gamecenter/a/ah;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/meizu/gamecenter/a/ah;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v3, Landroid/util/Pair;

    const-string v4, "sn"

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Landroid/util/Pair;

    const-string v3, "sign"

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v0, "http://u.meizu.com/service/sys_upgrade/checkUpgrade.jsonp"

    invoke-static {v0, v2}, Lcom/meizu/a/a/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/ah;->a(Ljava/lang/String;)Z

    move-result v0

    .line 70
    iget-boolean v1, p0, Lcom/meizu/gamecenter/a/ah;->d:Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_83

    if-eqz v1, :cond_5b

    .line 71
    const-string v0, "\u7528\u6237\u53d6\u6d88\u4e0b\u8f7d"

    .line 95
    :goto_5a
    return-object v0

    .line 73
    :cond_5b
    if-eqz v0, :cond_80

    .line 74
    :try_start_5d
    new-instance v0, Lcom/meizu/b/a/a/a;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ah;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ah;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/meizu/b/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/ah;->b:Lcom/meizu/b/a/a/a;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_68} :catch_83

    .line 76
    :try_start_68
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ah;->b:Lcom/meizu/b/a/a/a;

    invoke-virtual {v0}, Lcom/meizu/b/a/a/a;->b()Z
    :try_end_6d
    .catch Lcom/meizu/filetransfer/a; {:try_start_68 .. :try_end_6d} :catch_75
    .catch Lcom/meizu/filetransfer/c; {:try_start_68 .. :try_end_6d} :catch_79
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_83

    move-result v0

    if-eqz v0, :cond_72

    .line 77
    const/4 v0, 0x0

    goto :goto_5a

    .line 79
    :cond_72
    const-string v0, "\u4e0b\u8f7d\u51fa\u9519"

    goto :goto_5a

    .line 82
    :catch_75
    move-exception v0

    const-string v0, "\u7528\u6237\u53d6\u6d88\u4e0b\u8f7d"

    goto :goto_5a

    .line 83
    :catch_79
    move-exception v0

    :try_start_7a
    invoke-virtual {v0}, Lcom/meizu/filetransfer/c;->printStackTrace()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_83

    .line 85
    const-string v0, "\u4e0b\u8f7d\u51fa\u9519"

    goto :goto_5a

    .line 88
    :cond_80
    const-string v0, "\u83b7\u53d6\u8f7d\u4fe1\u606f\u51fa\u9519"

    goto :goto_5a

    .line 91
    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const-string v0, "\u83b7\u53d6\u8f7d\u4fe1\u606f\u51fa\u9519"

    goto :goto_5a
.end method
