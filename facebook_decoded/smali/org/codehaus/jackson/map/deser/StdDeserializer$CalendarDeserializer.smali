.class public Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdScalarDeserializer",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1165
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 1166
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;->a:Ljava/lang/Class;

    .line 1167
    return-void
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Calendar;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1173
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;->q(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Date;

    move-result-object v1

    .line 1174
    if-nez v1, :cond_0

    .line 1175
    const/4 v0, 0x0

    .line 1183
    :goto_0
    return-object v0

    .line 1177
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1178
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 1181
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1182
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;->a:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1153
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
