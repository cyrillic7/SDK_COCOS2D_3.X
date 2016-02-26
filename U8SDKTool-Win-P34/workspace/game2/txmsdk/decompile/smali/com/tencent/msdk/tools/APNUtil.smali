.class public Lcom/tencent/msdk/tools/APNUtil;
.super Ljava/lang/Object;
.source "APNUtil.java"


# static fields
.field public static final ANP_NAME_CMNET:Ljava/lang/String; = "cmnet"

.field public static final ANP_NAME_CMWAP:Ljava/lang/String; = "cmwap"

.field public static final ANP_NAME_CTNET:Ljava/lang/String; = "ctnet"

.field public static final ANP_NAME_CTWAP:Ljava/lang/String; = "ctwap"

.field public static final ANP_NAME_NET:Ljava/lang/String; = "net"

.field public static final ANP_NAME_NONE:Ljava/lang/String; = "none"

.field public static final ANP_NAME_UNINET:Ljava/lang/String; = "uninet"

.field public static final ANP_NAME_UNIWAP:Ljava/lang/String; = "uniwap"

.field public static final ANP_NAME_WAP:Ljava/lang/String; = "wap"

.field public static final ANP_NAME_WIFI:Ljava/lang/String; = "wifi"

.field public static final APNTYPE_3GNET:B = 0xbt

.field public static final APNTYPE_3GWAP:B = 0xat

.field public static final APNTYPE_CMNET:B = 0x1t

.field public static final APNTYPE_CMWAP:B = 0x2t

.field public static final APNTYPE_CTNET:B = 0x8t

.field public static final APNTYPE_CTWAP:B = 0x9t

.field public static final APNTYPE_NET:B = 0x6t

.field public static final APNTYPE_NONE:B = 0x0t

.field public static final APNTYPE_UNINET:B = 0x4t

.field public static final APNTYPE_UNIWAP:B = 0x5t

.field public static final APNTYPE_WAP:B = 0x7t

.field public static final APNTYPE_WIFI:B = 0x3t

.field public static final APN_PROP_APN:Ljava/lang/String; = "apn"

.field public static final APN_PROP_PORT:Ljava/lang/String; = "port"

.field public static final APN_PROP_PROXY:Ljava/lang/String; = "proxy"

.field public static final JCE_APNTYPE_CMNET:I = 0x2

.field public static final JCE_APNTYPE_CMWAP:I = 0x4

.field public static final JCE_APNTYPE_CTNET:I = 0x100

.field public static final JCE_APNTYPE_CTWAP:I = 0x200

.field public static final JCE_APNTYPE_DEFAULT:I = 0x1

.field public static final JCE_APNTYPE_NET:I = 0x40

.field public static final JCE_APNTYPE_UNINET:I = 0x10

.field public static final JCE_APNTYPE_UNIWAP:I = 0x20

.field public static final JCE_APNTYPE_UNKNOWN:I = 0x0

.field public static final JCE_APNTYPE_WAP:I = 0x80

.field public static final JCE_APNTYPE_WIFI:I = 0x8

.field public static final MPROXYTYPE_3GNET:I = 0x800

.field public static final MPROXYTYPE_3GWAP:I = 0x400

.field public static final MPROXYTYPE_CMNET:I = 0x4

.field public static final MPROXYTYPE_CMWAP:I = 0x1

.field public static final MPROXYTYPE_CTNET:I = 0x100

.field public static final MPROXYTYPE_CTWAP:I = 0x200

.field public static final MPROXYTYPE_DEFAULT:I = 0x80

.field public static final MPROXYTYPE_NET:I = 0x20

.field public static final MPROXYTYPE_UNINET:I = 0x8

.field public static final MPROXYTYPE_UNIWAP:I = 0x10

.field public static final MPROXYTYPE_WAP:I = 0x40

.field public static final MPROXYTYPE_WIFI:I = 0x2

.field private static PREFERRED_APN_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/tools/APNUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApnPort(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/tools/APNUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    const-string v7, "80"

    .line 207
    :goto_1c
    return-object v7

    .line 200
    :cond_1d
    const/4 v7, 0x0

    .line 201
    .local v7, "port":Ljava/lang/String;
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    if-nez v7, :cond_2f

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    const-string v7, "80"

    .line 206
    :cond_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1c
.end method

.method public static getApnPortInt(Landroid/content/Context;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/tools/APNUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 219
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v7, -0x1

    .line 225
    :goto_1b
    return v7

    .line 224
    :cond_1c
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 225
    .local v7, "result":I
    goto :goto_1b
.end method

.method public static getApnProxy(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/tools/APNUtil;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    :goto_1a
    return-object v2

    .line 180
    :cond_1b
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "strResult":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 182
    goto :goto_1a
.end method

.method public static getApnProxyIp(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getApnType(Landroid/content/Context;)B

    move-result v0

    .line 158
    .local v0, "apnType":B
    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 159
    :cond_e
    const-string v1, "10.0.0.172"

    .line 164
    :goto_10
    return-object v1

    .line 161
    :cond_11
    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    .line 162
    const-string v1, "10.0.0.200"

    goto :goto_10

    .line 164
    :cond_18
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getApnProxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method public static getApnType(Landroid/content/Context;)B
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 122
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getMProxyType(Landroid/content/Context;)I

    move-result v0

    .line 124
    .local v0, "netType":I
    if-ne v0, v1, :cond_d

    .line 125
    const/4 v1, 0x3

    .line 147
    :cond_c
    :goto_c
    return v1

    .line 126
    :cond_d
    if-eq v0, v2, :cond_c

    .line 128
    if-ne v0, v3, :cond_13

    move v1, v2

    .line 129
    goto :goto_c

    .line 130
    :cond_13
    const/16 v1, 0x10

    if-ne v0, v1, :cond_19

    .line 131
    const/4 v1, 0x5

    goto :goto_c

    .line 132
    :cond_19
    if-ne v0, v4, :cond_1d

    move v1, v3

    .line 133
    goto :goto_c

    .line 134
    :cond_1d
    const/16 v1, 0x40

    if-ne v0, v1, :cond_23

    .line 135
    const/4 v1, 0x7

    goto :goto_c

    .line 136
    :cond_23
    const/16 v1, 0x20

    if-ne v0, v1, :cond_29

    .line 137
    const/4 v1, 0x6

    goto :goto_c

    .line 138
    :cond_29
    const/16 v1, 0x200

    if-ne v0, v1, :cond_30

    .line 139
    const/16 v1, 0x9

    goto :goto_c

    .line 140
    :cond_30
    const/16 v1, 0x100

    if-ne v0, v1, :cond_36

    move v1, v4

    .line 141
    goto :goto_c

    .line 142
    :cond_36
    const/16 v1, 0x400

    if-ne v0, v1, :cond_3d

    .line 143
    const/16 v1, 0xa

    goto :goto_c

    .line 144
    :cond_3d
    const/16 v1, 0x800

    if-ne v0, v1, :cond_44

    .line 145
    const/16 v1, 0xb

    goto :goto_c

    .line 147
    :cond_44
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static getMProxyType(Landroid/content/Context;)I
    .registers 12
    .param p0, "act"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x200

    const/16 v8, 0x100

    const/16 v6, 0x80

    .line 256
    :try_start_6
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_11

    .line 308
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_10
    :goto_10
    return v6

    .line 260
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 261
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_10

    .line 263
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "typeName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "typeName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 267
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 268
    const/4 v6, 0x2

    goto :goto_10

    .line 270
    :cond_41
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "extraInfo":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extraInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 274
    const-string v9, "cmwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 275
    const/4 v6, 0x1

    goto :goto_10

    .line 276
    :cond_69
    const-string v9, "cmnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_79

    const-string v9, "epc.tmobile.com"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 278
    :cond_79
    const/4 v6, 0x4

    goto :goto_10

    .line 279
    :cond_7b
    const-string v9, "uniwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 280
    const/16 v6, 0x10

    goto :goto_10

    .line 281
    :cond_86
    const-string v9, "uninet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 282
    const/16 v6, 0x8

    goto :goto_10

    .line 283
    :cond_91
    const-string v9, "wap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 284
    const/16 v6, 0x40

    goto/16 :goto_10

    .line 285
    :cond_9d
    const-string v9, "net"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 286
    const/16 v6, 0x20

    goto/16 :goto_10

    .line 287
    :cond_a9
    const-string v9, "ctwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b4

    move v6, v7

    .line 288
    goto/16 :goto_10

    .line 289
    :cond_b4
    const-string v9, "ctnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bf

    move v6, v8

    .line 290
    goto/16 :goto_10

    .line 291
    :cond_bf
    const-string v9, "3gwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cb

    .line 292
    const/16 v6, 0x400

    goto/16 :goto_10

    .line 293
    :cond_cb
    const-string v9, "3gnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 294
    const/16 v6, 0x800

    goto/16 :goto_10

    .line 296
    :cond_d7
    const-string v9, "#777"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 297
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getApnProxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "proxy":Ljava/lang/String;
    if-eqz v4, :cond_ee

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e8} :catch_f1

    move-result v6

    if-lez v6, :cond_ee

    move v6, v7

    .line 299
    goto/16 :goto_10

    :cond_ee
    move v6, v8

    .line 301
    goto/16 :goto_10

    .line 305
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "extraInfo":Ljava/lang/String;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "proxy":Ljava/lang/String;
    .end local v5    # "typeName":Ljava/lang/String;
    :catch_f1
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10
.end method

.method public static hasProxy(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 235
    invoke-static {p0}, Lcom/tencent/msdk/tools/APNUtil;->getMProxyType(Landroid/content/Context;)I

    move-result v0

    .line 237
    .local v0, "netType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 239
    if-eq v0, v1, :cond_2d

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2d

    const/16 v2, 0x40

    if-eq v0, v2, :cond_2d

    const/16 v2, 0x200

    if-eq v0, v2, :cond_2d

    const/16 v2, 0x400

    if-ne v0, v2, :cond_2e

    .line 243
    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public static isActiveNetworkAvailable(Landroid/content/Context;)Z
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 332
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 334
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 335
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_13

    .line 336
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 337
    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "act"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 317
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 318
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_c

    .line 323
    :cond_b
    :goto_b
    return v2

    .line 320
    :cond_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 321
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 322
    const/4 v2, 0x1

    goto :goto_b
.end method
