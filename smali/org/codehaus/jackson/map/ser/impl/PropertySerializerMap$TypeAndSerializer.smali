.class final Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->a:Ljava/lang/Class;

    .line 90
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->b:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 91
    return-void
.end method
