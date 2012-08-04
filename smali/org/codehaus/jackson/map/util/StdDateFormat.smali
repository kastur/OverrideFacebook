.class public Lorg/codehaus/jackson/map/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "StdDateFormat.java"


# static fields
.field public static final a:Lorg/codehaus/jackson/map/util/StdDateFormat;

.field private static b:[Ljava/lang/String;

.field private static c:Ljava/text/SimpleDateFormat;

.field private static d:Ljava/text/SimpleDateFormat;

.field private static e:Ljava/text/SimpleDateFormat;

.field private static f:Ljava/text/SimpleDateFormat;


# instance fields
.field private transient g:Ljava/text/SimpleDateFormat;

.field private transient h:Ljava/text/SimpleDateFormat;

.field private transient i:Ljava/text/SimpleDateFormat;

.field private transient j:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->b:[Ljava/lang/String;

    .line 78
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 84
    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    new-instance v0, Lorg/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->a:Lorg/codehaus/jackson/map/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x5a

    const/16 v3, 0x3a

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 255
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 259
    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->j:Ljava/text/SimpleDateFormat;

    .line 261
    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->j:Ljava/text/SimpleDateFormat;

    .line 322
    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 264
    :cond_1
    if-ne v0, v4, :cond_3

    .line 265
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->i:Ljava/text/SimpleDateFormat;

    .line 266
    if-nez v0, :cond_2

    .line 267
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->i:Ljava/text/SimpleDateFormat;

    .line 270
    :cond_2
    add-int/lit8 v2, v1, -0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    add-int/lit8 v1, v1, -0x1

    const-string v3, ".000"

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 277
    :cond_3
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/StdDateFormat;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 278
    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    if-ne v0, v3, :cond_6

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    add-int/lit8 v2, v1, -0x3

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 291
    add-int/lit8 v1, v0, -0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 292
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v0, v0, -0x5

    const-string v2, ".000"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    .line 299
    iget-object v1, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 300
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 284
    :cond_6
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4

    .line 286
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 308
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    const/16 v2, 0x54

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 311
    const/16 v2, 0x8

    if-gt v1, v2, :cond_9

    .line 312
    const-string v1, ".000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->i:Ljava/text/SimpleDateFormat;

    .line 317
    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->i:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0
.end method

.method private static a()Lorg/codehaus/jackson/map/util/StdDateFormat;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lorg/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method private b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->g:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->g:Ljava/text/SimpleDateFormat;

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static final b(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x2d

    const/16 v3, 0x2b

    const/4 v0, 0x1

    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 337
    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    .line 338
    add-int/lit8 v2, v1, -0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 339
    if-eq v2, v3, :cond_0

    if-ne v2, v4, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    add-int/lit8 v2, v1, -0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 341
    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    .line 342
    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 343
    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    .line 345
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lorg/codehaus/jackson/map/util/StdDateFormat;->a()Lorg/codehaus/jackson/map/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->h:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x22

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 168
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 169
    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/map/util/StdDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    return-object v0

    .line 174
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    sget-object v5, Lorg/codehaus/jackson/map/util/StdDateFormat;->b:[Ljava/lang/String;

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    .line 176
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 177
    const-string v8, "\", \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    new-instance v0, Ljava/text/ParseException;

    const-string v5, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v1

    const/4 v1, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/StdDateFormat;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/util/StdDateFormat;->a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 199
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 201
    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    .line 203
    :cond_2
    if-gez v0, :cond_3

    .line 204
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/io/NumberInput;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/util/StdDateFormat;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method
