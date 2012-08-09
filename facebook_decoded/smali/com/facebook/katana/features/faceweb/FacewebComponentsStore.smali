.class public Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacewebComponentsStore.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final COMPONENTS:Ljava/lang/String; = "components"

.field private static final COMPONENTS_ID:Ljava/lang/String; = "componentsId"

.field private static final CONTINUE_SEARCH:Ljava/lang/String; = "continueSearch"

.field private static final METHOD:Ljava/lang/String; = "method"

.field private static final PARAMETERS:Ljava/lang/String; = "parameters"

.field private static final PARAMS:Ljava/lang/String; = "params"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final RULES:Ljava/lang/String; = "rules"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final sJsonFactory:Lorg/codehaus/jackson/JsonFactory; = null

.field private static final serialVersionUID:J = 0x54b2befb0b8db963L


# instance fields
.field mSkeleton:Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$EscapedObjectType;
        jsonFieldName = "components"
    .end annotation
.end field

.field mVersion:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 294
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    sput-object v0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->sJsonFactory:Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 280
    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;
    .locals 1
    .parameter

    .prologue
    .line 352
    const-class v0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;
    .locals 4
    .parameter

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 382
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot deserialize FacewebComponentStore from a null String"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/orca/common/util/Base64;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 386
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 388
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v1, "FacewebComponentStore"

    const-string v2, "Failed to deserialize"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    throw v0

    .line 392
    :catch_1
    move-exception v0

    .line 393
    const-string v1, "FacewebComponentsStore"

    const-string v2, "Failed to deserialize"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not deserialize FacewebComponentStore, class not found"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$FacewebSkeletonPalCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    iget-object v0, p0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->mSkeleton:Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 325
    :goto_0
    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->mSkeleton:Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;

    invoke-static {v0}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;->a(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->mSkeleton:Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;

    invoke-static {v0}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;->a(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$FacewebComponentsRule;

    .line 314
    invoke-virtual {v0, p1}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$FacewebComponentsRule;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->mSkeleton:Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;

    invoke-static {v1}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;->b(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$Skeleton;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$FacewebComponentsRule;->a(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$FacewebComponentsRule;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 318
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    invoke-static {v0}, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$FacewebComponentsRule;->b(Lcom/facebook/katana/features/faceweb/FacewebComponentsStore$FacewebComponentsRule;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    move-object v0, v2

    .line 325
    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/facebook/katana/features/faceweb/FacewebComponentsStore;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 365
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 366
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 367
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 369
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/Base64;->a([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string v1, "FacewebComponentStore"

    const-string v2, "Failed to serialize"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    throw v0
.end method
