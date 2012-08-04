.class final Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;
.super Ljava/lang/Object;
.source "JsonSerializerMap.java"


# instance fields
.field public final a:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

.field public final b:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;",
            "Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->c:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    .line 89
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->a:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    .line 90
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 91
    return-void
.end method
