.class public Lorg/codehaus/jackson/map/ser/EnumSerializer;
.super Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;
.source "EnumSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/ScalarSerializerBase",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field private a:Lorg/codehaus/jackson/map/util/EnumValues;


# direct methods
.method private constructor <init>(Lorg/codehaus/jackson/map/util/EnumValues;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    const-class v0, Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/ScalarSerializerBase;-><init>(Ljava/lang/Class;B)V

    .line 37
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/EnumSerializer;->a:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/ser/EnumSerializer;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            ")",
            "Lorg/codehaus/jackson/map/ser/EnumSerializer;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 45
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_TO_STRING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->a(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/jackson/map/util/EnumValues;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v0

    .line 47
    :goto_0
    new-instance v1, Lorg/codehaus/jackson/map/ser/EnumSerializer;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/ser/EnumSerializer;-><init>(Lorg/codehaus/jackson/map/util/EnumValues;)V

    return-object v1

    .line 45
    :cond_0
    invoke-static {p0, v0}, Lorg/codehaus/jackson/map/util/EnumValues;->b(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Enum;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumSerializer;->a:Lorg/codehaus/jackson/map/util/EnumValues;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/util/EnumValues;->a(Ljava/lang/Enum;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Lorg/codehaus/jackson/SerializableString;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Enum;

    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/ser/EnumSerializer;->a(Ljava/lang/Enum;Lorg/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public final b()Lorg/codehaus/jackson/map/util/EnumValues;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/EnumSerializer;->a:Lorg/codehaus/jackson/map/util/EnumValues;

    return-object v0
.end method
