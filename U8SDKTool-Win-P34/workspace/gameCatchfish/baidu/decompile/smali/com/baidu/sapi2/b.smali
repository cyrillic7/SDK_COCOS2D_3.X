.class final Lcom/baidu/sapi2/b;
.super Ljava/lang/Object;
.source "SapiOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b2c_sync_enabled"

.field private static final b:Ljava/lang/String; = "fast_reg_sms_num"

.field private static final c:Ljava/lang/String; = "global_share_strategy"

.field private static final d:Ljava/lang/String; = "specific_share_strategy"

.field private static final e:Ljava/lang/String; = "authorized_packages"

.field private static final f:Ljava/lang/String; = "authorized_domains"

.field private static final g:Ljava/lang/String; = "cache"

.field private static final h:Ljava/lang/String; = "enabled"

.field private static final i:Ljava/lang/String; = "modules"

.field private static final j:Ljava/lang/String; = "id"

.field private static final k:Ljava/lang/String; = "ref_entry"

.field private static final l:Ljava/lang/String; = "ref"

.field private static final m:Ljava/lang/String; = "download_url"

.field private static final n:Ljava/lang/String; = "version"

.field private static final o:Ljava/lang/String; = "hash"


# instance fields
.field private p:Lcom/baidu/sapi2/b$a;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/b;->t:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/b;->u:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/b;->v:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/baidu/sapi2/b$a;

    invoke-direct {v0}, Lcom/baidu/sapi2/b$a;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/b;->p:Lcom/baidu/sapi2/b$a;

    .line 53
    const-string v0, "10698000036592"

    iput-object v0, p0, Lcom/baidu/sapi2/b;->q:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/b;->r:Z

    .line 55
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/b;
    .registers 13
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 124
    new-instance v4, Lcom/baidu/sapi2/b;

    invoke-direct {v4}, Lcom/baidu/sapi2/b;-><init>()V

    .line 125
    .local v4, "options":Lcom/baidu/sapi2/b;
    const-string v10, "cache"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/sapi2/b$a;->a(Lorg/json/JSONObject;)Lcom/baidu/sapi2/b$a;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/b;->p:Lcom/baidu/sapi2/b$a;

    .line 126
    const-string v10, "fast_reg_sms_num"

    const-string v11, "10698000036592"

    invoke-virtual {p0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/b;->q:Ljava/lang/String;

    .line 127
    const-string v10, "b2c_sync_enabled"

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v4, Lcom/baidu/sapi2/b;->r:Z

    .line 128
    const-string v10, "global_share_strategy"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "strategyStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_36

    .line 130
    invoke-static {v8}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->mapStrToValue(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v10

    iput-object v10, v4, Lcom/baidu/sapi2/b;->s:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 132
    :cond_36
    const-string v10, "specific_share_strategy"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 133
    .local v3, "obj":Lorg/json/JSONObject;
    if-eqz v3, :cond_5c

    .line 134
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 135
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 137
    .local v9, "tpl":Ljava/lang/String;
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->mapStrToValue(Ljava/lang/String;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v7

    .line 138
    .local v7, "strategy":Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    iget-object v10, v4, Lcom/baidu/sapi2/b;->t:Ljava/util/Map;

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 141
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v7    # "strategy":Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .end local v9    # "tpl":Ljava/lang/String;
    :cond_5c
    const-string v10, "authorized_packages"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 142
    if-eqz v3, :cond_8a

    .line 143
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    .restart local v2    # "iterator":Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 146
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "packageSign":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_68

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_68

    .line 148
    iget-object v10, v4, Lcom/baidu/sapi2/b;->u:Ljava/util/Map;

    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68

    .line 152
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageSign":Ljava/lang/String;
    :cond_8a
    const-string v10, "authorized_domains"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 153
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_af

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_93
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_af

    .line 155
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ac

    .line 156
    iget-object v10, v4, Lcom/baidu/sapi2/b;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    .line 160
    .end local v1    # "i":I
    :cond_af
    return-object v4
.end method

.method static i()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v0, "initialAuthorizedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "com.baidu.sapi2.(.*)"

    const-string v2, "de308d7973b5171883333a97253327e4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "com.baidu.tieba(.*)"

    const-string v2, "673004cf2f6efdec2385c8116c1e8c14"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v1, "com.baidu.searchbox(.*)"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v1, "com.baidu.appsearch"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "com.baidu.(.*)input(.*)"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v1, "com.baidu.BaiduMap(.*)"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "com.baidu.browser.(.+)"

    const-string v2, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "com.baidu.iknow"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "com.baidu.yuedu"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "com.baidu.homework"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "com.baidu.wenku"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "com.baidu.mbaby"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "com.baidu.navi"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "com.baidu.travel"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "com.baidu.baidulife"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "com.ting.mp3.android"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "com.baidu.news"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "com.baidu.video"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "com.baidu.hao123(.*)"

    const-string v2, "7fd3727852d29eb6f4283988dc0d6150"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v1, "com.baidu.netdisk"

    const-string v2, "ae5821440fab5e1a61a025f014bd8972"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v1, "com.baidu.music.lebo"

    const-string v2, "b1d67a31136599143c5c38879728dcfd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v1, "com.hiapk.marketpho"

    const-string v2, "d46053ef4381d35cb774eb632d8e8aec"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v1, "com.baidu.gamecenter(.*)"

    const-string v2, "bddf74f2473eb1802fe13fe3e1aab81a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v1, "com.baidu.notes"

    const-string v2, "989d3c446cadade24c8c57a10fe6370d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v1, "com.baidu.lifenote"

    const-string v2, "c1a65e392e3892db0935d22f6c20b9cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "com.baidu.passport.securitycenter"

    const-string v2, "db97d206640d7aca6d75975b3c1f6e87"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "com.nuomi"

    const-string v2, "59215ee95c063ff2c56226581a62130a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "com.baidu.shucheng91"

    const-string v2, "2090b2ef3011c12d851ed125c2360954"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v1, "com.duoku.gamesearch"

    const-string v2, "153a76549eb514258b5806f95da02bb3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "com.baidu.qingpai"

    const-string v2, "80344917d9e7cf0fd8a8914cc918e0ef"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "cn.jingling.motu.photowonder"

    const-string v2, "6930f0bd9fa461c2cd65e216acee0118"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v1, "com.baidu.account"

    const-string v2, "fe3c74f0431ea0dc303a10b6af6470fc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "com.duoku.game.helper"

    const-string v2, "6231a79a3f43cdd01797eb5febbc6350"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "com.dragon.android.pandaspace"

    const-string v2, "5b120e96b20f5b4ec695d79b20d18753"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "com.baidu.addressugc"

    const-string v2, "9e2a7cde67d36c1e6a01bb070fc8ef7b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v1, "cn.opda.a.phonoalbumshoushou"

    const-string v2, "310a4f78e839b86df7731c2f48fcadae"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v1, "com.baidu.fb"

    const-string v2, "a4622402640f20dfda894cbe2edf8823"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v1, "com.baidu.baidutranslate"

    const-string v2, "0586742e88a2e6a19e996598ec336b61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v1, "com.baidu.lbs.waimai"

    const-string v2, "77ad7ac419a031af0252422152c62e67"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "com.baidu.lottery"

    const-string v2, "6e45686dd05db2374b0a600c7f28c0c4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "com.baidu.doctor"

    const-string v2, "49c95b74699e358ffe67f5daacab3d48"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "com.baidu.patient"

    const-string v2, "49c95b74699e358ffe67f5daacab3d48"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v1, "com.baidu.baidumovie"

    const-string v2, "645c143e25f34e076bcee9600b30e4c2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v1, "com.baidu.bdg.skyeye"

    const-string v2, "544f0f4a82864fbf7b9663fbc80437bb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v1, "com.zongheng.reader(.*)"

    const-string v2, "b9c43ba43f1e150d4f1670ae09a89a7f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "com.baidu.doctor.doctorask"

    const-string v2, "13a0a8019be4015ed20e075d824f1696"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-object v0
.end method

.method static j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "authorizedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "baidu.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v1, "hao123.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const-string v1, "baifubao.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v1, "nuomi.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v1, "chuanke.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/sapi2/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/baidu/sapi2/b;->r:Z

    return v0
.end method

.method public c()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/sapi2/b;->s:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/sapi2/b;->t:Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/sapi2/b;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/baidu/sapi2/b;->u:Ljava/util/Map;

    .line 77
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/b;->i()Ljava/util/Map;

    move-result-object v0

    goto :goto_a
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/sapi2/b;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/baidu/sapi2/b;->v:Ljava/util/List;

    .line 85
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/b;->j()Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method

.method public g()Lcom/baidu/sapi2/b$a;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/sapi2/b;->p:Lcom/baidu/sapi2/b$a;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 11

    .prologue
    .line 94
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v6, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string v8, "cache"

    iget-object v9, p0, Lcom/baidu/sapi2/b;->p:Lcom/baidu/sapi2/b$a;

    invoke-virtual {v9}, Lcom/baidu/sapi2/b$a;->c()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v8, "fast_reg_sms_num"

    iget-object v9, p0, Lcom/baidu/sapi2/b;->q:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v8, "b2c_sync_enabled"

    iget-boolean v9, p0, Lcom/baidu/sapi2/b;->r:Z

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    iget-object v8, p0, Lcom/baidu/sapi2/b;->s:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-eqz v8, :cond_2d

    .line 100
    const-string v8, "global_share_strategy"

    iget-object v9, p0, Lcom/baidu/sapi2/b;->s:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v9}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_2d
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .local v7, "obj":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/baidu/sapi2/b;->t:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 104
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v9}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3c

    .line 118
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "obj":Lorg/json/JSONObject;
    :catch_5c
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_5e
    return-object v8

    .line 106
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "obj":Lorg/json/JSONObject;
    :cond_5f
    const-string v8, "specific_share_strategy"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    new-instance v7, Lorg/json/JSONObject;

    .end local v7    # "obj":Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .restart local v7    # "obj":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/baidu/sapi2/b;->u:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_73
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 109
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_73

    .line 111
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8d
    const-string v8, "authorized_packages"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 113
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/baidu/sapi2/b;->v:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ad

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9d

    .line 116
    .end local v1    # "domain":Ljava/lang/String;
    :cond_ad
    const-string v8, "authorized_domains"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_b5} :catch_5c

    move-result-object v8

    goto :goto_5e
.end method
