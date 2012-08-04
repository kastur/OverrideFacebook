.class public Lcom/facebook/apache/http/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z

.field private final c:Lcom/facebook/apache/http/conn/EofSensorWatcher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/facebook/apache/http/conn/EofSensorWatcher;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->b:Z

    .line 96
    iput-object p2, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c:Lcom/facebook/apache/http/conn/EofSensorWatcher;

    .line 97
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    if-gez p1, :cond_2

    .line 209
    const/4 v0, 0x1

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c:Lcom/facebook/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c:Lcom/facebook/apache/http/conn/EofSensorWatcher;

    iget-object v1, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/conn/EofSensorWatcher;->a(Ljava/io/InputStream;)Z

    move-result v0

    .line 212
    :cond_0
    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    iput-object v2, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    .line 218
    :cond_2
    return-void

    .line 215
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    throw v0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->b:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 235
    const/4 v0, 0x1

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c:Lcom/facebook/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c:Lcom/facebook/apache/http/conn/EofSensorWatcher;

    iget-object v1, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/conn/EofSensorWatcher;->b(Ljava/io/InputStream;)Z

    move-result v0

    .line 238
    :cond_0
    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_1
    iput-object v2, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    .line 244
    :cond_2
    return-void

    .line 241
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    throw v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 263
    const/4 v0, 0x1

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c:Lcom/facebook/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c:Lcom/facebook/apache/http/conn/EofSensorWatcher;

    iget-object v1, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/EofSensorWatcher;->b_()Z

    move-result v0

    .line 266
    :cond_0
    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_1
    iput-object v2, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    .line 272
    :cond_2
    return-void

    .line 269
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 179
    :cond_0
    return v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c()V

    .line 175
    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->b:Z

    .line 186
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->b()V

    .line 187
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->close()V

    .line 279
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->b:Z

    .line 291
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c()V

    .line 292
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 117
    const/4 v0, -0x1

    .line 119
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 122
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c()V

    .line 125
    throw v0
.end method

.method public read([B)I
    .locals 2
    .parameter

    .prologue
    .line 151
    const/4 v0, -0x1

    .line 153
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 156
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c()V

    .line 159
    throw v0
.end method

.method public read([BII)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    const/4 v0, -0x1

    .line 136
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 139
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-direct {p0}, Lcom/facebook/apache/http/conn/EofSensorInputStream;->c()V

    .line 142
    throw v0
.end method
