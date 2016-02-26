.class public Lcom/nearme/game/sdk/common/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ByteArrToObject([B)Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 12
    .line 16
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_20
    .catchall {:try_start_1 .. :try_end_6} :catchall_3b

    .line 17
    :try_start_6
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_5a
    .catchall {:try_start_6 .. :try_end_b} :catchall_54

    .line 18
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_5d
    .catchall {:try_start_b .. :try_end_e} :catchall_58

    move-result-object v0

    .line 24
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_16

    .line 31
    :goto_12
    :try_start_12
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_1b

    .line 37
    :cond_15
    :goto_15
    return-object v0

    .line 27
    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 34
    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 20
    :catch_20
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_58

    .line 23
    if-eqz v3, :cond_2b

    .line 24
    :try_start_28
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_36

    .line 30
    :cond_2b
    :goto_2b
    if-eqz v2, :cond_15

    .line 31
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_15

    .line 34
    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 27
    :catch_36
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 22
    :catchall_3b
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 23
    :goto_3f
    if-eqz v3, :cond_44

    .line 24
    :try_start_41
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4a

    .line 30
    :cond_44
    :goto_44
    if-eqz v2, :cond_49

    .line 31
    :try_start_46
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4f

    .line 35
    :cond_49
    :goto_49
    throw v0

    .line 27
    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 34
    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 22
    :catchall_54
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3f

    :catchall_58
    move-exception v0

    goto :goto_3f

    .line 20
    :catch_5a
    move-exception v1

    move-object v2, v0

    goto :goto_23

    :catch_5d
    move-exception v1

    goto :goto_23
.end method

.method public static ObjectToByte(Ljava/lang/Object;)[B
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 45
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_23
    .catchall {:try_start_1 .. :try_end_6} :catchall_3e

    .line 46
    :try_start_6
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_5d
    .catchall {:try_start_6 .. :try_end_b} :catchall_57

    .line 47
    :try_start_b
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_60
    .catchall {:try_start_b .. :try_end_11} :catchall_5b

    move-result-object v0

    .line 54
    :try_start_12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_19

    .line 61
    :goto_15
    :try_start_15
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1e

    .line 67
    :cond_18
    :goto_18
    return-object v0

    .line 57
    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 64
    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 50
    :catch_23
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_26
    :try_start_26
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_5b

    .line 53
    if-eqz v3, :cond_2e

    .line 54
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_39

    .line 60
    :cond_2e
    :goto_2e
    if-eqz v2, :cond_18

    .line 61
    :try_start_30
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_18

    .line 64
    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 57
    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 52
    :catchall_3e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 53
    :goto_42
    if-eqz v3, :cond_47

    .line 54
    :try_start_44
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_4d

    .line 60
    :cond_47
    :goto_47
    if-eqz v2, :cond_4c

    .line 61
    :try_start_49
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_52

    .line 65
    :cond_4c
    :goto_4c
    throw v0

    .line 57
    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 64
    :catch_52
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 52
    :catchall_57
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_42

    :catchall_5b
    move-exception v0

    goto :goto_42

    .line 50
    :catch_5d
    move-exception v1

    move-object v2, v0

    goto :goto_26

    :catch_60
    move-exception v1

    goto :goto_26
.end method
