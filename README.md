# Api teste Events app

## Configuração

Rode:

```
bundle
rails db:setup
rails s
```

GET http://localhost:3000/api/v1/events

```
[
  {
    "id": 1,
    "name": "Event1",
    "url": "localhost:3001/events/1",
    "description": "Event0 description",
    "start_date": "2025-01-15",
    "end_date": "2025-01-17",
    "event_type": "in-person",
    "location": "Florianópolis",
    "participant_limit": 20,
    "status": "draft",
    "created_at": "2025-01-18T11:55:31.254Z",
    "updated_at": "2025-01-18T11:55:31.254Z"
  },
  {
    "id": 2,
    "name": "Event2",
    "url": "localhost:3001/events/2",
    "description": "Event1 description",
    "start_date": "2025-01-15",
    "end_date": "2025-01-17",
    "event_type": "in-person",
    "location": "Florianópolis",
    "participant_limit": 21,
    "status": "draft",
    "created_at": "2025-01-18T11:55:31.336Z",
    "updated_at": "2025-01-18T11:55:31.336Z"
  }
]
```

GET http://localhost:3000/api/v1/events/1/

```
{
  "id": 1,
  "name": "Event1",
  "url": "localhost:3001/events/1",
  "description": "Event0 description",
  "start_date": "2025-01-15",
  "end_date": "2025-01-17",
  "event_type": "in-person",
  "location": "Florianópolis",
  "participant_limit": 20,
  "status": "draft",
  "created_at": "2025-01-18T11:55:31.254Z",
  "updated_at": "2025-01-18T11:55:31.254Z"
}
```

GET http://localhost:3000/api/v1/events/1/schedules

```
[
  {
    "id": 1,
    "date": "2025-01-14",
    "start_time": "2000-01-01T11:00:00.000Z",
    "event_id": 1,
    "created_at": "2025-01-18T11:55:31.287Z",
    "updated_at": "2025-01-18T11:55:31.287Z"
  },
  {
    "id": 2,
    "date": "2025-01-15",
    "start_time": "2000-01-01T11:00:00.000Z",
    "event_id": 1,
    "created_at": "2025-01-18T11:55:31.293Z",
    "updated_at": "2025-01-18T11:55:31.293Z"
  },
  {
    "id": 3,
    "date": "2025-01-16",
    "start_time": "2000-01-01T11:00:00.000Z",
    "event_id": 1,
    "created_at": "2025-01-18T11:55:31.310Z",
    "updated_at": "2025-01-18T11:55:31.310Z"
  }
]
```

GET http://localhost:3000/api/v1/events/1/schedules/1

```
{
  "id": 1,
  "date": "2025-01-14",
  "start_time": "2000-01-01T11:00:00.000Z",
  "event_id": 1,
  "created_at": "2025-01-18T11:55:31.287Z",
  "updated_at": "2025-01-18T11:55:31.287Z"
}
```

GET http://localhost:3000/api/v1/events/1/schedules/1/schedule_items

```
[
  {
    "id": 1,
    "start_time": "2000-01-01T11:00:00.000Z",
    "lenght": 90,
    "title": "Title 1",
    "description": "Something",
    "speaker_email": "speaker0@email.com",
    "schedule_id": 1,
    "created_at": "2025-01-18T12:18:46.065Z",
    "updated_at": "2025-01-18T12:18:46.065Z"
  },
  {
    "id": 2,
    "start_time": "2000-01-01T14:00:00.000Z",
    "lenght": 90,
    "title": "Title 1",
    "description": "Something",
    "speaker_email": "speaker0@email.com",
    "schedule_id": 1,
    "created_at": "2025-01-18T12:18:46.071Z",
    "updated_at": "2025-01-18T12:18:46.071Z"
  }
]
```

GET http://localhost:3000/api/v1/events/1/schedules/1/schedule_items/1

```
{
  "id": 1,
  "start_time": "2000-01-01T11:00:00.000Z",
  "lenght": 90,
  "title": "Title 1",
  "description": "Something",
  "speaker_email": "speaker0@email.com",
  "schedule_id": 1,
  "created_at": "2025-01-18T12:18:46.065Z",
  "updated_at": "2025-01-18T12:18:46.065Z"
}
```