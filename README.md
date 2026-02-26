# DBCONVERT — Advanced SQLite Database Conversion Tool

A professional-grade SQLite export utility designed for large databases, structured exports, and Hugging Face dataset deployment.

---

## Overview

`dbconvert` is a robust SQLite database conversion tool built for:

- Structured data exports
- Machine learning pipelines
- Dataset archival
- Hugging Face dataset publishing
- Analytics workflows

It supports multi-table exports and large-database handling with chunking and Parquet sharding.

---

## Key Features

- Automatic SQLite validation
- Table detection (excludes internal SQLite tables)
- Multi-format export
- Chunked export for large tables
- Parquet sharding for big data
- Direct Hugging Face dataset upload
- Clean terminal UI with progress indicators
- Dependency auto-install support (Debian-based systems)

---

## Supported Export Formats

| Option | Format | Use Case |
|--------|--------|----------|
| 1 | CSV (per table) | Lightweight structured export |
| 2 | Combined CSV | Flat archival (can be large) |
| 3 | XLSX | Excel multi-sheet export |
| 4 | JSON | Structured API-style export |
| 5 | SQL Dump | Full schema + data backup |
| 6 | PostgreSQL Dump | Migration starting point |
| 7 | Markdown Tables | Documentation export |
| 8 | Parquet (per table) | **Recommended for ML & HF** |
| 9 | Hugging Face Dataset | Parquet + automatic HF upload |

---

## Recommended Format for ML / Hugging Face

**Apache Parquet (Option 8 or 9)**

Why:
- Columnar compression
- Efficient streaming
- Native compatibility with Hugging Face `datasets`
- Scales to very large tables
- Ideal for model training and analytics

---

## Installation

### System Requirements

- Debian / Ubuntu Linux
- Python 3.9+
- SQLite3

### Install Dependencies

```bash
sudo apt install sqlite3 python3 python3-pip
pip install -r requirements.txt
