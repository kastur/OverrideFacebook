.class public Lcom/facebook/katana/util/logging/CameraFlowLogger;
.super Ljava/lang/Object;
.source "CameraFlowLogger.java"


# static fields
.field private static a:I

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/logging/CameraFlowLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Lorg/codehaus/jackson/node/ObjectNode;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

.field private p:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x1e0

    sput v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a:I

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-wide v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->g:J

    .line 205
    iput-wide v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->h:J

    .line 207
    iput-wide v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->i:J

    .line 210
    iput v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l:I

    .line 211
    iput v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m:I

    .line 215
    iput-boolean v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->n:Z

    .line 216
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->UNKNOWN:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    iput-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->o:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    .line 235
    iput-object p1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->e:Ljava/lang/String;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->f:J

    .line 237
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b:Landroid/content/Context;

    .line 238
    return-void
.end method

.method private a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;
    .locals 1
    .parameter

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 265
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;Ljava/lang/String;J)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    move-result-object v0

    .line 266
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)V

    .line 267
    return-object v0
.end method

.method private a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;Ljava/lang/String;J)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-direct/range {p0 .. p5}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;Ljava/lang/String;J)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    move-result-object v0

    .line 260
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)V

    .line 261
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;
    .locals 4
    .parameter

    .prologue
    .line 167
    const-class v1, Lcom/facebook/katana/util/logging/CameraFlowLogger;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j()V

    .line 168
    new-instance v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 169
    sget-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/katana/util/logging/CameraFlowLogger;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    const-class v1, Lcom/facebook/katana/util/logging/CameraFlowLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;

    .line 190
    if-nez v0, :cond_0

    .line 191
    invoke-static {p1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-direct {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l()Lcom/facebook/katana/util/logging/CameraFlowLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 193
    :cond_0
    monitor-exit v1

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->p:Landroid/net/Uri;

    .line 349
    iput-object p1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->o:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    .line 350
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 351
    const-string v1, "uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->PICKED_MEDIA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 353
    return-void
.end method

.method private b(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;Ljava/lang/String;J)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    const-wide/16 v13, 0x0

    .line 282
    if-eqz p3, :cond_0

    .line 284
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 290
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 291
    new-instance v12, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v12, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 294
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->n:Z

    if-eqz v1, :cond_1

    .line 295
    const-string v1, "flow_tainted"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->n:Z

    invoke-virtual {v12, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->p:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 298
    const-string v1, "uri"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->p:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_2
    new-instance v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->o:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->f:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-wide/from16 v10, p4

    invoke-direct/range {v1 .. v16}, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;-><init>(Lcom/facebook/katana/util/logging/CameraFlowLogger;Ljava/lang/String;Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;JJJLorg/codehaus/jackson/node/ObjectNode;JLjava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v2, "camera_flow_logging"

    invoke-virtual {v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    .line 307
    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    move-object/from16 v12, p2

    goto :goto_1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;
    .locals 2
    .parameter

    .prologue
    .line 185
    const-class v1, Lcom/facebook/katana/util/logging/CameraFlowLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->d:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private static j()V
    .locals 8

    .prologue
    .line 175
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;

    invoke-direct {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m()J

    move-result-wide v2

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sget v0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 221
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->UNKNOWN:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    iput-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->o:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    .line 222
    iput-object v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->p:Landroid/net/Uri;

    .line 225
    iput-wide v3, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->g:J

    .line 226
    iput-object v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->k:Ljava/lang/String;

    .line 228
    iput v2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l:I

    .line 229
    iput v2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m:I

    .line 230
    iput-wide v3, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->h:J

    .line 231
    iput-object v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    .line 232
    return-void
.end method

.method private l()Lcom/facebook/katana/util/logging/CameraFlowLogger;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->n:Z

    .line 242
    return-object p0
.end method

.method private m()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->f:J

    return-wide v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 459
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    iput-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    .line 461
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "record_tainted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 463
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->i:J

    .line 464
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->h:J

    .line 465
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/katana/util/logging/CameraFlowLogger;
    .locals 2
    .parameter

    .prologue
    .line 315
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 316
    const-string v1, "source_act"

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->STARTED_FLOW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 318
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 356
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    iput-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->o:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    .line 358
    iput-object v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->p:Landroid/net/Uri;

    .line 359
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v2, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 361
    const-string v2, "flash"

    iget-object v3, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "size_bytes"

    invoke-virtual {v0, v2, p1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 363
    iput-object v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->k:Ljava/lang/String;

    .line 365
    :goto_0
    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->CAPTURED_PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 366
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 340
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->PHOTO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;Landroid/net/Uri;)V

    .line 341
    return-void
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->n()V

    .line 452
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v2, "ex_type"

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->FAILED_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    iget-object v2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->i:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;Ljava/lang/String;J)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 456
    return-void

    .line 452
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->h:J

    .line 437
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->i:J

    .line 438
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->p:Landroid/net/Uri;

    .line 439
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    iput-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    .line 440
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "attempt_num"

    invoke-virtual {v0, v1, p2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 441
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "attempt_time_s"

    invoke-virtual {v0, v1, p3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 442
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    iget v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l:I

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m:I

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->k()V

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->g:J

    .line 324
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->START_LOADED_CAMERA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)V

    .line 325
    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;Landroid/net/Uri;)V

    .line 345
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->k:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public final c()V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 328
    new-instance v2, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v3, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 330
    iget-wide v3, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->g:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->g:J

    sub-long v4, v3, v5

    .line 332
    iput-wide v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->g:J

    .line 336
    :goto_0
    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->LOADED_CAMERA:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;Ljava/lang/String;J)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 337
    return-void

    .line 334
    :cond_0
    const-string v3, "record_tainted"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    move-wide v4, v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->n()V

    .line 446
    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->SUCCESSFUL_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    iget-object v2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->j:Lorg/codehaus/jackson/node/ObjectNode;

    iget-wide v4, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->i:J

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;Ljava/lang/String;J)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 448
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->PLAYED_VIDEO:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 395
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->INITIATED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 407
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 410
    const/4 v0, 0x0

    .line 411
    iget v1, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l:I

    iget v2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m:I

    add-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 412
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 413
    const-string v1, "tags_user"

    iget v2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 414
    const-string v1, "tags_text"

    iget v2, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 416
    :cond_0
    sget-object v1, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->ACCEPTED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lorg/codehaus/jackson/node/ObjectNode;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 417
    iput v3, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l:I

    .line 418
    iput v3, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m:I

    .line 419
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->l:I

    .line 423
    iput v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger;->m:I

    .line 424
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->REJECTED_REVIEW:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 425
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->INITIATED_COMPOSER:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 429
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->POSTED_UPLOAD:Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;

    invoke-direct {p0, v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;)Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;

    .line 433
    return-void
.end method
