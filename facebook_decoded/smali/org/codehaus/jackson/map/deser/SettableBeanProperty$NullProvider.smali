.class public final Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;
.super Ljava/lang/Object;
.source "SettableBeanProperty.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->a:Ljava/lang/Object;

    .line 703
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->r()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->b:Z

    .line 704
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->c:Ljava/lang/Class;

    .line 705
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 709
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not map JSON null into type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (set DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES to \'false\' to allow)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 713
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->a:Ljava/lang/Object;

    return-object v0
.end method
